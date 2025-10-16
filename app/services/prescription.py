from typing import Union

from fastapi import FastAPI
from dotenv import load_dotenv
import requests
import os
import sys
sys.path.append(os.path.abspath(os.path.join(os.path.dirname(__file__), '..')))
from component.emr import EMR
from component.eapts import EAPTS
from component.openhim.auth import auth
from component.openhim.heartbeat import Heartbeat
from apscheduler.schedulers.background import BackgroundScheduler
from component.openhim.openhim import Openhim
import json
import time

load_dotenv()

class Prescription:
    def __init__(self):
        self.openhim = Openhim()
        self.emr = EMR()
        self.eapts = EAPTS()
        self.prescriptionSize = os.getenv("EMR_PRESCRIPTION_LOAD_SIZE") or 100
        self.defaultCatchmentWoreda = os.getenv("DEFAULT_FACILITY_CATCHMENT_WOREDA")

    def sync(self, recursive=False):
        #read lastOrderId.json
        with open('../lastOrderId.json') as file:
            lastOrderObject = json.load(file)
            self.lastOrder = lastOrderObject['last_order_id']

        self.lastOrder = self.lastOrder

        #sync prescription
        self.prescriptions = self.emr.loadPrescription(self.lastOrder, self.prescriptionSize, recursive)
        
        if len(self.prescriptions) == 0:
            return self.prescriptions

        result = self.transform()
        with open("/opt/EMR-eAPTS-mediator/preparedResult.json", "w", encoding="utf-8") as f:
            json.dump(result, f, ensure_ascii=False, indent=4)

                
        last_uploded = self.eapts.upload_prescriptions(result)

        self.lastOrder = last_uploded["last_order_id"]
        
        #write lastOrderId.json
        with open('../lastOrderId.json', 'w') as file:
            json.dump({"last_order_id": self.lastOrder}, file)

        if(len(self.prescriptions) == int(self.prescriptionSize)):
            time.sleep(10)
            return self.sync(recursive=True)

        return self.prescriptions
    
    def transform(self):
        result=[]

        encounter_to_ignore=None
        # check if the prescription is cut off by the limit
        if len(self.prescriptions) == self.prescriptionSize:
            last_prescription = self.prescriptions[self.prescriptionSize-1]['encounter_id']
            last_order_counts = self.countOrdersWith(last_prescription['encounter_id'])
            if last_order_counts < int(last_prescription["numberOfOrders"]):
                # the prescription is cut off by the limit
                encounter_to_ignore = last_prescription["encounter_id"]

        last_encounter_id = None
        #loop through each prescriptions
        for i, prescription in  enumerate(self.prescriptions):

            # ignore the prescription that is cut off by the limit
            if encounter_to_ignore != None and prescription["encounter_id"] == encounter_to_ignore:
                break
            
            if last_encounter_id == prescription["encounter_id"]:
                continue
            
            if(int(prescription["numberOfOrders"])>1):
                last_encounter_id=prescription["encounter_id"]

            emr_orders = self.ordersWith(prescription["encounter_id"])

            eapts_orders= []
            prescription_last_order = None
            for order in emr_orders:
                prescription_last_order = order["orderNumber"]
                eapts_orders.append(self.transformOrder(order))

            phone_number = len(prescription["phoneNumber"]) > 0 and prescription["phoneNumber"] or "0912345678"
            woredaId = len(prescription["woredaId"]) > 0 and prescription["woredaId"] or self.defaultCatchmentWoreda
            insuranceNumber = len(prescription["insuranceNumber"]) > 0 and prescription["insuranceNumber"] or None
            with open("../mappedDiagnosisUuids.json", "r") as f:
                mapped_uuids = json.load(f)  # list of UUID strings


            if len(prescription["diagnosisUUID"]) > 0 and prescription["diagnosisUUID"] != "" and prescription["diagnosisUUID"] in mapped_uuids:
                prescriptionDiagnosis = [
                    {
                        "diagnosisTypeId": prescription["diagnosisUUID"],
                        "additionalInfo": prescription["additionalInfo"]
                    }
                ]
            else:
                prescriptionDiagnosis = []
            output_json = { "prescription": {
                "prescriber": {
                    "firstName": prescription["prescriber_firstName"],
                    "middleName": prescription["prescriber_middleName"],
                    "lastName": prescription["prescriber_lastName"],
                    "qualification": prescription["precriber_role"],
                    "registrationNumber": str(prescription["prescriber_registrationNumber"]),
                    "rowGuid": prescription["prescriber_rowGuid"]
                },
                "patient": {
                    "firstName": prescription["firstName"],
                    "middleName": prescription["middleName"],
                    "lastName": prescription["lastName"],
                    "phoneNumber": phone_number,
                    "age": prescription["age"],
                    "sex": prescription["sex"],
                    "houseNumber": prescription["houseNumber"],
                    "cardNumber": prescription["cardNumber"],
                    "kebele": prescription["kebele"],
                    "rowGuid": prescription["patient_rowGuid"],
                    "sponsorName": prescription["sponserName"],
                    "paymentTypeId": prescription["paymentType"],
                    "woredaId": woredaId,
                    "patientTypeId": prescription["patientTypeId"],
                    "weight": prescription["weight"],
                    "insuranceNumber": insuranceNumber                   
                },
                "prescriptionDetails":eapts_orders,
                "prescriptionDiagnosis": prescriptionDiagnosis,
                "prescriptionDate": prescription["prescriptionDate"],
                "rowGuid": prescription["rowGuid"],
                "prsecriptionUUID": prescription["rowGuid"],
                "institutionId": prescription["institutionID"]
                },
                "last_order_id": prescription_last_order
            }
            
            result.append(output_json) 

        return result
    
    def countOrdersWith(self, encounter_id):
        return len(self.ordersWith(encounter_id))
    
    def ordersWith(self, encounter_id):
        return list(filter(lambda o: o['encounter_id'] == encounter_id, self.prescriptions))
    
    def transformOrder(self, order):
        return {
                "numberOfDuration": order["numberOfDuration"],
                "administrationId": order["administrationId"],
                "frequencyTypeId": order["frequencyTypeId"],
                "itemUnitId": order["itemUnitId"],
                "quantity": order["quantity"],
                "additionalNote": json.dumps(order["additionalNote"]),
                "orderNumber": order["orderNumber"],
                "dose": order["dose"],
                "dose_units": order["dose_units"],
                "duration_units": order["duration_units"]
            }