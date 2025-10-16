from typing import List, Dict, Optional
from fastapi import HTTPException
from dotenv import load_dotenv
import requests
import os
import sys
import urllib3

# Add parent directory to path so `component` can be imported
sys.path.append(os.path.abspath(os.path.join(os.path.dirname(__file__), '..')))
from component.emr import EMR
from component.eapts import EAPTS

load_dotenv()
urllib3.disable_warnings(urllib3.exceptions.InsecureRequestWarning)


class DrugSync:
    def __init__(self):
        self.emr = EMR()
        self.eapts = EAPTS()
        self.DuItems_url = self.eapts.DuItems_url
        self.token: Optional[str] = None
        self.eamr_headers = self.emr.getAuthHeader()

    # ----------------------
    # eAPTS drug fetching
    # ----------------------
    def fetch_drugs_from_eapts(self) -> List[Dict]:
        """Fetch drug items from eAPTS API."""
        if not self.token:
            auth_response = self.eapts.authenticate()
            if auth_response["status"] == "success":
                self.token = auth_response["response"]["token"]["access_token"]
            else:
                raise Exception("Failed to authenticate with EAPTS")

        headers = {"Authorization": f"Bearer {self.token}"}
        response = requests.get(self.DuItems_url, headers=headers)
        response.raise_for_status()
        return response.json()

    # ----------------------
    # Drug filtering
    # ----------------------
    def filter_drugs(self, fetched_drugs: Dict) -> List[Dict]:
        """Filter drugs that are not already registered in EMR."""
        response = requests.get(
            self.emr.drugManagement_url, headers=self.eamr_headers, verify=False
        )
        response.raise_for_status()
        emr_drugs = response.json()

        registered_uuids = {drug["uuid"] for drug in emr_drugs.get("results", [])}
        eapts_drugs = fetched_drugs.get("model", [])

        return [
            drug for drug in eapts_drugs if drug.get("itemUuid") not in registered_uuids
        ]

    # ----------------------
    # Concept operations
    # ----------------------
    def check_existing_concept(self, concept_name: str) -> Dict:
        """Check if a concept exists in EMR by name."""
        headers = self.emr.getAuthHeader()
        response = requests.get(
            f"{self.emr.getConceptByName_url}&concept_name={concept_name}",
            headers=headers,
            verify=False,
        )
        response.raise_for_status()
        return response.json()

    def update_concept(self, concept: Dict, new_name: str):
        """Update an existing concept in EMR."""
        data = {
            "names": [
                {
                    "name": new_name,
                    "locale": "en",
                    "localePreferred": True,
                    "conceptNameType": "FULLY_SPECIFIED",
                }
            ],
            "datatype": concept.get("datatype_uuid"),
            "version": "1.2.2",
            "conceptClass": concept.get("class_uuid"),
            "mappings": [],
            "descriptions": [],
        }

        uuid = concept.get("uuid")
        response = requests.post(
            f"{self.emr.conceptManagement_url}/{uuid}",
            headers=self.eamr_headers,
            json=data,
            verify=False,
        )
        response.raise_for_status()

    def create_concept(self, concept_name: str, concept_type: str) -> Dict:
        """Create a new concept in EMR."""
        if concept_type == "drug":
            concept_class = os.getenv("EMR_DRUG_CONCEPT_CLASS_UUID")
        else:
            concept_class = os.getenv("EMR_MISC_CONCEPT_CLASS_UUID")

        data = {
            "names": [
                {
                    "name": concept_name,
                    "locale": "en",
                    "localePreferred": True,
                    "conceptNameType": "FULLY_SPECIFIED",
                }
            ],
            "datatype": os.getenv("EMR_DRUG_CONCEPT_DATATYPE_UUID"),
            "version": "1.2.2",
            "conceptClass": concept_class,
            "mappings": [],
            "descriptions": [],
        }

        response = requests.post(
            self.emr.conceptManagement_url,
            headers=self.eamr_headers,
            json=data,
            verify=False,
        )
        response.raise_for_status()
        return response.json()

    # ----------------------
    # Drug creation
    # ----------------------
    def create_drug(self, uuid: str, dosage_form: str, drug: Dict) -> Dict:
        """Create a new drug in EMR."""
        data = {
            "concept": uuid,
            "combination": False,
            "name": drug.get("genericName"),
            "strength": drug.get("strength"),
            "uuid": drug.get("itemUuid"),
            "minimumDailyDose": None,
            "maximumDailyDose": None,
            "dosageForm": dosage_form,
        }

        response = requests.post(
            self.emr.drugManagement_url,
            headers=self.eamr_headers,
            json=data,
            verify=False,
        )
        response.raise_for_status()
        return response.json()

    # ----------------------
    # Sync manager
    # ----------------------
    def check_and_update_emr(self, drugs_to_process: List[Dict]) -> List[str]:
        """Check and update EMR with new/updated drugs."""
        created_drugs = []

        for drug in drugs_to_process:
            dosage_list = self.check_existing_concept(drug["dosage"])
            concept_list = self.check_existing_concept(drug["genericName"])

            # Handle dosage concept
            if not dosage_list:
                created_dosage = self.create_concept(drug["dosage"], "misc")
                dosage_form = created_dosage["uuid"]
            else:
                dosage_form = dosage_list[0].get("uuid", "")

            # Handle drug concept
            if not concept_list:  # If the concept doesn't exist
                created_concept = self.create_concept(drug["genericName"], "drug")
                created_drug = self.create_drug(
                    created_concept["uuid"], dosage_form, drug
                )
            elif concept_list[0].get("class") != "Drug":  # Exists but wrong class
                new_name = f"UPDATED_BY_eAPTS_EAMR_MEDIATOR_{drug['genericName']}"
                self.update_concept(concept_list[0], new_name)
                created_concept = self.create_concept(drug["genericName"], "drug")
                created_drug = self.create_drug(
                    created_concept["uuid"], dosage_form, drug
                )
            else:  # Exists and correct
                created_drug = self.create_drug(
                    concept_list[0].get("uuid"), dosage_form, drug
                )

            created_drugs.append(
                f"(Generic Name: {created_drug['name']}, "
                f"UUID: {created_drug['uuid']}, "
                f"Strength: {created_drug['strength']}, "
                f"Dosage Form: {created_drug['dosageForm']['display']})"
            )

        return created_drugs

    def drugSyncManager(self) -> Dict:
        """Main sync manager to keep EMR and eAPTS consistent."""
        try:
            fetched_drugs = self.fetch_drugs_from_eapts()
            drugs_to_process = self.filter_drugs(fetched_drugs)

            if not drugs_to_process:
                return {
                    "status": "success",
                    "message": "Drug items are up-to-date and consistent between the EMR and eAPTS systems.",
                }

            updates = self.check_and_update_emr(drugs_to_process)
            if updates:
                return {
                    "status": "success",
                    "message": "Created drugs: " + ", ".join(updates),
                }
            return {"status": "success", "message": "No new drugs created."}

        except Exception as e:
            raise HTTPException(status_code=500, detail=str(e))
