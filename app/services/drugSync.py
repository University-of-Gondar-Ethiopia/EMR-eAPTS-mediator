from typing import List, Dict
from fastapi import FastAPI, HTTPException
from dotenv import load_dotenv
import requests
import os
import sys
sys.path.append(os.path.abspath(os.path.join(os.path.dirname(__file__), '..')))
from component.emr import EMR
from component.eapts import EAPTS




load_dotenv()


class DrugSync:
    def __init__(self):
        self.emr = EMR()
        self.eapts = EAPTS()
        self.DuItems_url = self.eapts.DuItems_url
        self.token =None
        self.eamr_headers = self.emr.getAuthHeader()
        
    def fetch_drugs_from_eapts(self) -> List[dict]:
        if self.token is None:
            auth_response = self.eapts.authenticate()
            if auth_response["status"] == "success":
                self.token = auth_response["response"]["token"]["access_token"]
            else:
                raise Exception("Failed to authenticate with EAPTS")


        headers = {'Authorization': f'Bearer {self.token}'}
        response = requests.get(f'{self.DuItems_url}', headers=headers)
        response.raise_for_status()
        return response.json()
   
    def filter_drugs(self, fetched_drugs: Dict) -> List[Dict]:
        # Load registered drugs from EMR
        response = requests.get(self.emr.drugManagement_url, headers=self.eamr_headers, verify=False)
        response.raise_for_status()
        emr_drugs = response.json()
       
        # Extract the list of UUIDs from the EMR drugs
        registered_uuids = {drug['uuid'] for drug in emr_drugs.get('results', [])}


        # Extract the list of drugs from the fetched data
        eapts_drugs = fetched_drugs.get('model', [])


        # Filter out drugs that are not in the registered list
        drugs_to_process = [drug for drug in eapts_drugs if drug['itemUuid'] not in registered_uuids]


        return drugs_to_process
       
    def check_existing_concept(self, concept_name: str) -> Dict:
        headers = self.emr.getAuthHeader()
        response = requests.get(f'{self.emr.getConceptByName_url}&concept_name={concept_name}', headers=headers, verify=False)
        response.raise_for_status()
        return response.json()
   
    def update_concept(self, concept: str, new_name: str):
        data = {
            "names": [
                {
                    "name": new_name,
                    "locale": "en",
                    "localePreferred": True,
                    "conceptNameType": "FULLY_SPECIFIED"
                }
            ],
            "datatype": concept['datatype_uuid'],
            "version": "1.2.2",
            "conceptClass": concept['class_uuid'],
            "mappings": [],
            "descriptions": []
        }
       
        response = requests.post(f'{self.emr.conceptManagement_url}/{concept['uuid']}', headers=self.eamr_headers, json=data, verify=False)
        response.raise_for_status()
       
    def create_concept(self, concept_name: str, concept_type: str):
        if concept_type == 'drug':
            conceptClass = os.getenv("EMR_DRUG_CONCEPT_CLASS_UUID")
        else:
            conceptClass = os.getenv("EMR_MISC_CONCEPT_CLASS_UUID")
        data = {
            "names": [
                {
                    "name": concept_name,
                    "locale": "en",
                    "localePreferred": True,
                    "conceptNameType": "FULLY_SPECIFIED"
                }
            ],
            "datatype": os.getenv("EMR_DRUG_CONCEPT_DATATYPE_UUID"),
            "version": "1.2.2",
            "conceptClass": conceptClass,
            "mappings": [],
            "descriptions": []
        }
       
        response = requests.post(f'{self.emr.conceptManagement_url}',  headers=self.eamr_headers, json=data, verify=False)        
        response.raise_for_status()
       
        return response.json()


    def create_drug(self, uuid: str, dosage_form: str, drug: Dict):
        data = {
            "concept": uuid,
            "combination": False,
            "name": drug.get("genericName"),
            "strength": drug.get("strength"),
            "uuid": drug.get("itemUuid"),
            "minimumDailyDose": None,
            "maximumDailyDose": None,
            "dosageForm": dosage_form
        }
       
        response = requests.post(f'{self.emr.drugManagement_url}',  headers=self.eamr_headers, json=data, verify=False)
        response.raise_for_status()
        return response.json()


    def check_and_update_emr(self, drugs_to_process: List[Dict]):
        created_drugs = []  # List to track created drugs

        for drug in drugs_to_process:
           
            dosage_list = self.check_existing_concept(drug['dosage'])
            concept_list = self.check_existing_concept(drug['genericName'])
           
            if dosage_list and len(dosage_list) == 0:  # If the dosageForm concept doesn't exist
                created_dosageConcept = self.create_concept(drug['dosage'], "misc")  # Create the dosageForm
                dosage_form = created_dosageConcept['uuid']
            else:
                if dosage_list and dosage_list[0]['name'] == 'None':
                    dosage_form = ""
                else:
                    dosage_form = dosage_list[0]['uuid']
               
       
            if concept_list and len(concept_list) == 0:  # If the concept doesn't exist
                created_concept = self.create_concept(drug['genericName'], 'drug')  # Create the concept
                created_drug = self.create_drug(created_concept["uuid"], dosage_form, drug)  # Create the drug
                created_drugs.append(f"(Generic Name: {created_drug['name']}, uuid: {created_drug['uuid']}, Strength: {created_drug['strength']}, Dosage Form: {created_drug['dosageForm']['display']})")
           
            elif concept_list and concept_list[0].get('class') != "Drug":  # If the concept exists but class is not "Drug"
                new_name = f"UPDATED_BY_eAPTS_EAMR_MEDIATER_{drug['genericName']}"
                self.update_concept(concept_list[0], new_name)  # Update the concept
                created_concept = self.create_concept(drug['genericName'])  # Create the concept
                created_drug = self.create_drug(created_concept["uuid"], dosage_form, drug)  # Create the drug
                created_drugs.append(f"(Generic Name: {created_drug['name']}, uuid: {created_drug['uuid']}, Strength: {created_drug['strength']}, Dosage Form: {created_drug['dosageForm']['display']})")

            elif concept_list and concept_list[0].get('class') == "Drug":  # If the concept exists and class is "Drug"
                created_drug = self.create_drug(concept_list[0].get('uuid'), dosage_form, drug)  # Create the drug
                created_drugs.append(f"(Generic Name: {created_drug['name']}, uuid: {created_drug['uuid']}, Strength: {created_drug['strength']}, Dosage Form: {created_drug['dosageForm']['display']})")
        return created_drugs  # Return the list of created drugs
    
    def drugSyncManager(self):
        try:
            fetched_drugs = self.fetch_drugs_from_eapts()
            drugs_to_process = self.filter_drugs(fetched_drugs)
            if not drugs_to_process:
                return {"status": "success", "message": "Drug Items are up-to-date and consistent between the EMR and eAPTS systems."}
            
            updates = self.check_and_update_emr(drugs_to_process)
            if updates:
                return {"status": "success", "message": "Created drugs: " + ", ".join(updates)}
            else:
                return {"status": "success", "message": "No new drugs created."}
            
        except Exception as e:
            raise HTTPException(status_code=500, detail=str(e))