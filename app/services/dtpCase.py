from typing import List, Dict
from fastapi import FastAPI, HTTPException
from dotenv import load_dotenv
import requests
import json
import os
import sys
from datetime import datetime, timezone, timedelta
sys.path.append(os.path.abspath(os.path.join(os.path.dirname(__file__), '..')))
from component.emr import EMR
from component.eapts import EAPTS


load_dotenv()


class DtpCase:
    def __init__(self):
        self.emr = EMR()
        self.eapts = EAPTS()
        self.token = None
        self.eamr_headers = self.emr.getAuthHeader()
        
    def fetch_dtpCases_from_eapts(self) -> List[dict]:
        if self.token is None:
            auth_response = self.eapts.authenticate()
            if auth_response["status"] == "success":
                self.token = auth_response["response"]["token"]["access_token"]
            else:
                raise Exception("Failed to authenticate with EAPTS")

        headers = {'Authorization': f'Bearer {self.token}'}
        response = requests.get(f'{self.eapts.DtpCase_url}', headers=headers)
        response.raise_for_status()
        return response.json()
       
    def isDtpCaseUploadedToEMRBefore(self, order_id: int) -> Dict:
        response = requests.get(f'{self.emr.dtpCases_url}&order_id={order_id}', headers=self.eamr_headers, verify=False)
        response.raise_for_status()
        return response.json()
    
    def getOrderDetail(self, order_id: str) -> Dict:
        response = requests.get(f'{self.emr.orderDetail_url}&order_id={order_id}', headers=self.eamr_headers, verify=False)
        response.raise_for_status()
        return response.json()
       
    def uploadDtpCase(self, order_number: str, encounter_uuid: str, person_uuid: str, value: str):
        now_utc = datetime.now(timezone.utc)
        formatted_date = now_utc.strftime('%Y-%m-%dT%H:%M:%S.000%z')

        data = {
            "person": person_uuid,
            "concept": os.getenv("EMR_DTPCASE_CONCEPT_UUID"),
            "obsDatetime": formatted_date,
            "order": order_number,
            "encounter": encounter_uuid,
            "voided": False,
            "value": value
        }
       
        response = requests.post(f'{self.emr.obs_url}', headers=self.eamr_headers, json=data, verify=False)        
        response.raise_for_status()
       
        return response.json()

    def storeUploadedOrderID(self, order_id: int, file_path: str):
        os.makedirs(os.path.dirname(file_path), exist_ok=True)

        if os.path.exists(file_path):
            with open(file_path, 'r') as file:
                try:
                    data = json.load(file)
                except json.JSONDecodeError:
                    data = {"order_ids": []}
        else:
            data = {"order_ids": []}

        if order_id not in data["order_ids"]:
            data["order_ids"].append(order_id)

            with open(file_path, 'w') as file:
                json.dump(data, file, indent=4)
    
    def read_stored_order_ids_from_json(self, file_path: str) -> set:
        if not os.path.exists(file_path):
            return set()

        with open(file_path, 'r') as file:
            try:
                data = json.load(file)
                return set(data.get("order_ids", []))
            except json.JSONDecodeError:
                return set()

    def check_and_update_emr(self, dtpCases: List[Dict], file_path: str):
        fetched_dtpCases = dtpCases.get('model', [])
        stored_order_ids = self.read_stored_order_ids_from_json(file_path)

        for dtpCase in fetched_dtpCases:
            order_number = dtpCase['prescriptionDetails'][0]['orderNumber']

            if order_number in stored_order_ids:
                # Skip processing for already uploaded cases
                continue
          
            uploaded_dtpCase = self.isDtpCaseUploadedToEMRBefore(order_number)
            
            if uploaded_dtpCase[0]['status'] == 0:  # If the dtpCase is not uploaded before
                order_detail = self.getOrderDetail(order_number)
                
                self.uploadDtpCase(
                    order_detail[0]['order_number'], 
                    order_detail[0]['encounter_uuid'], 
                    order_detail[0]['person_uuid'], 
                    dtpCase['codeOfDtps'][0]['dtp']['name']
                )  # Upload the DTP case
                
                # Append to JSON file after successful upload
                self.storeUploadedOrderID(order_number, file_path)
            else:
                return {"status": "success", "message": "This DTP case is already uploaded"}

    def dtpCaseManager(self):
        try:
            fetched_dtpCases = self.fetch_dtpCases_from_eapts()
            if len(fetched_dtpCases) == 0:
                return {"status": "success", "message": "There is no DTP case"}
            else:
                try:
                    self.uploaded_file_path = os.path.join(os.path.dirname(__file__), '../../' 'uploadedDtpCaseOrderIds.json')
                    self.uploaded_file_path = os.path.abspath(self.uploaded_file_path)
                    
                    self.check_and_update_emr(fetched_dtpCases, self.uploaded_file_path)
                    return {"status": "success", "message": "DTP Cases are uploaded Successfully!"}
                except Exception as e:
                    raise HTTPException(status_code=500, detail=str(e))
        except Exception as e:
            raise HTTPException(status_code=500, detail=str(e))
DtpCase().dtpCaseManager()       