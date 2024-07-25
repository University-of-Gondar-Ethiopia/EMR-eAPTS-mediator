# emr class to handel EMR authentication
import requests
import os
from dotenv import load_dotenv
import base64

load_dotenv()

class EMR:
    def __init__(self):
        self.username = os.getenv("EMR_USERNAME")
        self.password = os.getenv("EMR_PASSWORD")
        self.url = os.getenv("EMR_AUTH_ENDPOINT")
        self.prescription_url = os.getenv("EMR_PRESCRIPTION_ENDPOINT")
        
    def getAuthHeader(self):

        credentials = f"{self.username}:{self.password}"
        encoded_credentials = base64.b64encode(credentials.encode('utf-8')).decode('utf-8')

        # Create the headers with the encoded credentials
        return {
            'Authorization': f'Basic {encoded_credentials}'
        }
    
    """
    Authenticate test the authentication headers.

    Returns:
        dict: Contains the status of the authentication process and the response data.
    """

    def authenticate(self):

        # Get auth header
        headers = self.getAuthHeader()

        # Sending the post request
        response = requests.get(self.url, headers=headers)

        # Handling the response
        if response.status_code == 200:
            return {"status": "success", "response": response.json()}
        else:
            return {"status": "failure", "response": response.text}
        
    def loadPrescription(self,lastOrder, size, recursive=False):
        
        # headers = self.getAuthHeader()
        # headers.append(("Content-Type", "application/json"))

        # # Sending the post request
        # response = requests.get(f"{self.url}/prescription?lastOrder={lastOrder}&size={size}", headers=headers)

        # # Handling the response
        # if response.status_code == 200:
        #     return {"status": "success", "response": response.json()}
        # else:
        #     return {"status": "failure", "response": response.text}

        sample_result = []
        
        for i in range(100):
            sample_result.append( {
            "prescriptionDate": "2024-07-22 17:17:16.000000",
            "rowGuid": "c13b4ad1-50bc-4839-b341-7cf79fc53c80",
            "dose": 500.0,
            "numberOfDuration": 1,
            "orderNumber": 38952+i,
            "additionalNote": "{\"instructions\":\"At bedtime\"}",
            "quantity": 70.0,
            "patient_id": 1045865,
            "frequencyTypeId": "d015b73b-35d5-428f-beaa-6d1afc1cf38a",
            "administrationId": "76469973-0f21-4a9d-9684-713f67437374",
            "itemUnitId": "05492370-cada-48c2-81e8-1bb7734c3ea2",
            "duration_units": 93,
            "prescriber_registrationNumber": 123,
            "prescriber_firstName": "Selamsew",
            "prescriber_lastName": "Tesfaye",
            "prescriber_middleName": "",
            "precriber_role": "SuperAdmin",
            "prescriber_rowGuid": "910c309c-e0f9-48ef-bf3a-b4cd793c2117",
            "patient_rowGuid": "0941faf2-c300-4c66-a50b-4da605957f64",
            "sex": "Male",
            "age": 25,
            "region": "d7d22bf4-219e-48f7-ae0a-db4dea505db5",
            "zone": "980f0d44-b7b5-4a0c-a11a-cea1e81d5c04",
            "dose_units": "ml",
            "woredaId": "9c29e345-7d9a-4d09-ae95-4feee784a214",
            "kebele": "04",
            "houseNumber": "112233",
            "cardNumber": "000000003",
            "paymentType": "8371c688-436c-4f45-bd13-5f6a8afa5e39",
            "phoneNumber": "0912345678",
            "person_id": 1045865,
            "sponserName": "Simada",
            "patientTypeId": "51784ec0-0967-40e3-b01f-822a67c1ab36",
            "weight": "",
            "encounter_id": 90210,
            "firstName": "DemoOne",
            "middleName": "DemoOne",
            "lastName": "DemoOne",
            "diagnosisID": 14260,
            "diagnosisUUID": "2ec60d0c-0c82-45f9-b3dc-9a41492b0025",
            "diagnosisName": "1F54.0- - - - Visceral leishmaniasis",
            "additionalInfo": "this is aditional infomration",
            "numberOfOrders": 1
        })
        
        
        return sample_result;
"""
{
  "prescriber": {
    "firstName": "test",
    "middleName": "test",
    "lastName": "test",
    "qualification": "Dr.",
    "registrationNumber": "100",
    "rowGuid": "910c309c-e0f9-48ef-bf3a-b4cd793c2117"
  },
  "patient": {
    "firstName": "string",
    "middleName": "string",
    "lastName": "string",
    "phoneNumber": "0945284142",
    "age": 60,
    "ageType": "Years",
    "weight": 56,
    "sex": "Male",
    "houseNumber": null,
    "cardNumber": "129878",
    "insuranceNumber": null,
    "kebele": null,
    "rowGuid": "e5d7017a-1168-4e6b-8c81-7eed3f7bcdf9",
    "sponsorName": null,
    "paymentTypeId": "8371c688-436c-4f45-bd13-5f6a8afa5e39",
    "patientTypeId": "51784ec0-0967-40e3-b01f-822a67c1ab36"
  },
  "prescriptionDetails": [
    {
      "numberOfDuration": 0,
      "administrationId": "76469973-0f21-4a9d-9684-713f67437374",
      "frequencyTypeId": "d015b73b-35d5-428f-beaa-6d1afc1cf38a",
      "itemUnitId": "05492370-cada-48c2-81e8-1bb7734c3ea2",
      "quantity": 10,
      "additionalNote": "Additional information",
      "orderNumber": 200
    }
  ],
  "prescriptionDiagnosis": [
    {
      "diagnosisTypeId": "2ec60d0c-0c82-45f9-b3dc-9a41492b0025",
      "additionalInfo": "diagnosis infomration"
    }
  ],
  "prescriptionDate": "2024-07-24T13:22:10.586Z",
  "prescriptionNumber": "154536",
  "rowGuid": "5a9306b7-8cb5-43e9-9013-341d2087a968",
  "institutionId": "5a9306b7-8cb5-43e9-9013-341d2087a918",
  "prsecriptionUUID": "5a9306b7-8cb5-43e9-9013-341d2087a911"
}

"""