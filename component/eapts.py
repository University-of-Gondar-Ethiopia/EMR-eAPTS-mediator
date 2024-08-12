# class to handel EAPTS authentication
import requests
import os
from dotenv import load_dotenv
import base64
import time
import json
load_dotenv()

class EAPTS:
    def __init__(self):
        self.username = os.getenv("EAPTS_USERNAME")
        self.password = os.getenv("EAPTS_PASSWORD")
        self.url = os.getenv("EAPTS_AUTH_ENDPOINT")
        self.prescription_url = os.getenv("EAPTS_PRESCRIPTION_ENDPOINT")
        self.DuItems_url = os.getenv("EAPTS_DUITEMS_ENDPOINT")

    def getAuthHeader(self):
        if self.auth is None:
            self.authenticate()
        elif self.auth['token']['access_token'] is None:
            # throw an exception
            raise Exception("Access token not found");

        # Bearrer token header
        return {
            'Authorization': f'Bearer {self.auth['token']['access_token']}'
        }
    
    def authenticate(self):

        data = {
            "username": self.username,
            "password": self.password
        }

        # Sending the post request
        response = requests.post(self.url, json=data, headers={'Content-Type': 'application/json'})

        # Handling the response
        if response.status_code == 200:
            self.auth = response.json();
            return {"status": "success", "response": self.auth}
        else:
            return {"status": "failure", "response": response.text}

    def uploadPrescription(self, prescriptions):

        self.authenticate()
        headers = self.getAuthHeader()
        # headers["Content-Type"]="application/json"
        last_uploaded = None

        try:
            # send each prescriptions individually
            for i, prescription in enumerate(prescriptions):
                response = requests.post(self.prescription_url, data=json.dumps(prescription["prescription"]), headers=headers)
                
                if response.status_code == 200:
                    last_uploaded=i
                    print("Uploaded prescription: \n"+str(i))
                    time.sleep(1)
                else:
                    raise Exception("Failed to upload prescription \n"+str(response.text))
                
            return prescriptions[last_uploaded];
        except Exception as e:
            if last_uploaded != None:
                print("Failed to upload prescription "+str(prescriptions[last_uploaded]) +"\n"+ e)
                return prescriptions[last_uploaded];
            
            


""" Sample auth object:
{
    "user": {
        "id": 10,
        "userName": "daniela",
        "normalizedUserName": "DANIELA",
        "email": "daniela@gmail.com",
        "normalizedEmail": "DANIELA@GMAIL.COM",
        "emailConfirmed": false,
        "passwordHash": "AQAAAAEAACcQAAAAELz+n4sVbBQkjOZYBpFUlK2wP7E0ggsdndmE4vIHA6cAfwkxpgcz4blLak33QyVOPA==",
        "securityStamp": "QTQIHGEN33T76C7CM5YTYELMF5JDTOLT",
        "concurrencyStamp": "63c78b79-b05e-492a-bce2-4795a68fc10e",
        "phoneNumber": "+251 91 605 3683",
        "phoneNumberConfirmed": false,
        "twoFactorEnabled": false,
        "lockoutEnd": null,
        "lockoutEnabled": false,
        "accessFailedCount": 0,
        "firstName": "Daniel",
        "lastName": "Assegid",
        "fullName": "Daniel Assegid",
        "isActive": true,
        "userRoles": [
            {
                "userId": 10,
                "roleId": 28,
                "role": {
                    "id": 28,
                    "name": "Biller/Evaluator/Dispenser",
                    "normalizedName": "BILLER/EVALUATOR/DISPENSER",
                    "concurrencyStamp": "53e7fd67-a49e-4221-b65d-5d273ceb8f4c",
                    "userRoles": [
                        {
                            "userId": 9,
                            "roleId": 28
                        }
                    ],
                    "claims": null,
                    "roleMenus": [],
                    "rolePermissions": []
                }
            }
        ],
        "claims": null,
        "userInfos": [],
        "userInstitutions": [
            {
                "userId": 10,
                "institutionId": 5397,
                "institution": {
                    "name": "Emergency Pharmacy",
                    "woredaId": 5485,
                    "institutionTypeId": 168,
                    "parentInstitutionId": 3619,
                    "leadTime": 0,
                    "safetyStock": 0.5,
                    "eop": 1,
                    "amcModifier": 1,
                    "reportingPeriodTypeId": 10,
                    "sn": null,
                    "institutionType": null,
                    "parentInstitution": null,
                    "woreda": null,
                    "reportingPeriodType": null,
                    "userInstitutions": [],
                    "id": 5397,
                    "isActive": true,
                    "createdBy": 2,
                    "createdDate": "2020-08-27T08:11:42.587734+03:00",
                    "modifiedBy": 4,
                    "modifiedDate": "2022-11-12T07:58:12.922386+03:00",
                    "rowguid": "e13f494c-2269-4b29-8e67-6f550fb8824b"
                },
                "id": 77,
                "isActive": true,
                "createdBy": 1,
                "createdDate": "2023-06-19T07:47:34.866941+03:00",
                "modifiedBy": 1,
                "modifiedDate": "2023-06-19T07:47:34.866941+03:00",
                "rowguid": "1a55efe1-61ca-455e-ab10-8ac04df28963"
            }
        ]
    },
    "token": {
        "access_token": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkYW5pZWxhIiwianRpIjoiMjY3NTJhM2EtNzIxYy00YmZiLWJmNjAtNzI5M2I4MDMwYjgwIiwiaWF0IjoxNzIxNDgzOTkyLCJodHRwOi8vc2NoZW1hcy5taWNyb3NvZnQuY29tL3dzLzIwMDgvMDYvaWRlbnRpdHkvY2xhaW1zL3ByaW1hcnlzaWQiOiIxMCIsIm5iZiI6MTcyMTQ4Mzk5MiwiZXhwIjoxNzIxNTI3MTkyLCJpc3MiOiJodHRwOi8vbG9jYWxob3N0OjUwMDAiLCJhdWQiOiJodHRwOi8vbG9jYWxob3N0OjMwMDAifQ.DbKpkt2yMbqyeJ4GIfYyybLGp0t6D83pZ8URc7oMITo",
        "expires_in": 43200
    },
    "permissions": [
        "DU-DSP-CR",
        "DU-DSP-RD",
        "DU-DSP-UP",
        "DU-DSP-DE",
        "DU-DSP-EX",
        "DU-ISS-CR",
        "DU-ISS-RD",
        "DU-ISS-UP",
        "DU-ISS-DE",
        "DU-ISS-EX",
        "DU-ACTP-CR",
        "DU-ACTP-RD",
        "DU-ACTP-UP",
        "DU-ACTP-DE",
        "DU-ACTP-EX",
        "DU-DSHP-CR",
        "DU-DSHP-RD",
        "DU-DSHP-UP",
        "DU-DSHP-DE",
        "DU-DSHP-EX",
        "DU-SSRP-CR",
        "DU-SSRP-RD",
        "DU-SSRP-UP",
        "DU-SSRP-DE",
        "DU-SSRP-EX",
        "DU-SRGP-CR",
        "DU-SRGP-RD",
        "DU-SRGP-UP",
        "DU-SRGP-DE",
        "DU-SRGP-EX",
        "DU-PEVP-CR",
        "DU-PEVP-RD",
        "DU-PEVP-UP",
        "DU-PEVP-DE",
        "DU-PEVP-EX",
        "DU-COU-CR",
        "DU-COU-RD",
        "DU-COU-UP",
        "DU-COU-DE",
        "DU-COU-EX"
    ],
    "menus": [
        {
            "title": "Dashboard",
            "code": "DU-DSH",
            "icon": "ft-home",
            "parentMenuId": null,
            "parentMenu": null,
            "path": "/dispensing-unit/dashboard",
            "class": null,
            "badge": null,
            "badgeclass": null,
            "isExternalLink": false,
            "priority": 3,
            "subMenus": [],
            "institutionTypeId": 168,
            "institutionType": {
                "parentInstitutionTypeId": null,
                "parentInstitutionType": null,
                "name": "Dispensing Unit",
                "code": "DUT",
                "id": 168,
                "isActive": true,
                "createdBy": 1,
                "createdDate": "2019-09-19T11:43:21.49+03:00",
                "modifiedBy": 1,
                "modifiedDate": "2019-09-19T11:43:21.049+03:00",
                "rowGuid": "cb682a07-f1d5-4ece-929d-846e199a636c"
            },
            "id": 3327,
            "isActive": true,
            "createdBy": 1,
            "createdDate": "2022-11-10T16:36:27.205724+03:00",
            "modifiedBy": 1,
            "modifiedDate": "2022-11-10T16:36:27.205724+03:00",
            "rowGuid": "46aeb22d-efef-407d-9b9a-bdcde7e95c97"
        },
        {
            "title": "Dispense",
            "code": "DSP",
            "icon": "ft-corner-up-right",
            "parentMenuId": null,
            "parentMenu": null,
            "path": "/dispensing-unit/dispense",
            "class": null,
            "badge": null,
            "badgeclass": null,
            "isExternalLink": false,
            "priority": 87,
            "subMenus": [],
            "institutionTypeId": 168,
            "institutionType": {
                "parentInstitutionTypeId": null,
                "parentInstitutionType": null,
                "name": "Dispensing Unit",
                "code": "DUT",
                "id": 168,
                "isActive": true,
                "createdBy": 1,
                "createdDate": "2019-09-19T11:43:21.49+03:00",
                "modifiedBy": 1,
                "modifiedDate": "2019-09-19T11:43:21.049+03:00",
                "rowGuid": "cb682a07-f1d5-4ece-929d-846e199a636c"
            },
            "id": 66,
            "isActive": true,
            "createdBy": 1,
            "createdDate": "2019-05-02T08:20:30.37+03:00",
            "modifiedBy": 1,
            "modifiedDate": "2019-05-02T08:20:35.566+03:00",
            "rowGuid": "b28c20fc-56b2-4875-900c-fd474c58f31f"
        },
        {
            "title": "Summary Report",
            "code": "DU-SSR",
            "icon": "fa fa-th-large",
            "parentMenuId": null,
            "parentMenu": null,
            "path": "/",
            "class": "has-sub",
            "badge": null,
            "badgeclass": null,
            "isExternalLink": false,
            "priority": 155,
            "subMenus": [
                {
                    "title": "Sales Register",
                    "code": "DU-SRG",
                    "icon": "fa fa-table",
                    "parentMenuId": 3325,
                    "parentMenu": null,
                    "path": "//dispensing-unit/report/sales-register",
                    "class": null,
                    "badge": null,
                    "badgeclass": null,
                    "isExternalLink": false,
                    "priority": 11,
                    "subMenus": [],
                    "institutionTypeId": 168,
                    "institutionType": {
                        "parentInstitutionTypeId": null,
                        "parentInstitutionType": null,
                        "name": "Dispensing Unit",
                        "code": "DUT",
                        "id": 168,
                        "isActive": true,
                        "createdBy": 1,
                        "createdDate": "2019-09-19T11:43:21.49+03:00",
                        "modifiedBy": 1,
                        "modifiedDate": "2019-09-19T11:43:21.049+03:00",
                        "rowGuid": "cb682a07-f1d5-4ece-929d-846e199a636c"
                    },
                    "id": 568,
                    "isActive": true,
                    "createdBy": 1,
                    "createdDate": "2020-10-16T12:50:23.852315+03:00",
                    "modifiedBy": 1,
                    "modifiedDate": "2020-10-16T12:50:23.852315+03:00",
                    "rowGuid": "60f2668e-e407-4b9f-aa49-27b23efe6d2c"
                },
                {
                    "title": "Activity Log",
                    "code": "DU-ACT",
                    "icon": "ft-trending-up",
                    "parentMenuId": 3325,
                    "parentMenu": null,
                    "path": "//dispensing-unit/report/activity-report",
                    "class": null,
                    "badge": null,
                    "badgeclass": null,
                    "isExternalLink": false,
                    "priority": 33,
                    "subMenus": [],
                    "institutionTypeId": 168,
                    "institutionType": {
                        "parentInstitutionTypeId": null,
                        "parentInstitutionType": null,
                        "name": "Dispensing Unit",
                        "code": "DUT",
                        "id": 168,
                        "isActive": true,
                        "createdBy": 1,
                        "createdDate": "2019-09-19T11:43:21.49+03:00",
                        "modifiedBy": 1,
                        "modifiedDate": "2019-09-19T11:43:21.049+03:00",
                        "rowGuid": "cb682a07-f1d5-4ece-929d-846e199a636c"
                    },
                    "id": 566,
                    "isActive": true,
                    "createdBy": 1,
                    "createdDate": "2020-10-16T12:50:11.587075+03:00",
                    "modifiedBy": 1,
                    "modifiedDate": "2020-10-16T12:50:11.587075+03:00",
                    "rowGuid": "6f938a26-5dd1-4fea-b177-5bdd7d695ecc"
                },
                {
                    "title": "Prescription Evaluation",
                    "code": "DU-PEV",
                    "icon": "fa fa-plus-square-o",
                    "parentMenuId": 3325,
                    "parentMenu": null,
                    "path": "//dispensing-unit/report/prescription-evaluation",
                    "class": null,
                    "badge": null,
                    "badgeclass": null,
                    "isExternalLink": false,
                    "priority": 65,
                    "subMenus": [],
                    "institutionTypeId": 168,
                    "institutionType": {
                        "parentInstitutionTypeId": null,
                        "parentInstitutionType": null,
                        "name": "Dispensing Unit",
                        "code": "DUT",
                        "id": 168,
                        "isActive": true,
                        "createdBy": 1,
                        "createdDate": "2019-09-19T11:43:21.49+03:00",
                        "modifiedBy": 1,
                        "modifiedDate": "2019-09-19T11:43:21.049+03:00",
                        "rowGuid": "cb682a07-f1d5-4ece-929d-846e199a636c"
                    },
                    "id": 567,
                    "isActive": true,
                    "createdBy": 1,
                    "createdDate": "2020-10-16T12:50:23.852315+03:00",
                    "modifiedBy": 1,
                    "modifiedDate": "2020-10-16T12:50:23.852315+03:00",
                    "rowGuid": "24dd67d5-5945-4534-9e23-d2e9fda14bd5"
                }
            ],
            "institutionTypeId": 168,
            "institutionType": {
                "parentInstitutionTypeId": null,
                "parentInstitutionType": null,
                "name": "Dispensing Unit",
                "code": "DUT",
                "id": 168,
                "isActive": true,
                "createdBy": 1,
                "createdDate": "2019-09-19T11:43:21.49+03:00",
                "modifiedBy": 1,
                "modifiedDate": "2019-09-19T11:43:21.049+03:00",
                "rowGuid": "cb682a07-f1d5-4ece-929d-846e199a636c"
            },
            "id": 3325,
            "isActive": true,
            "createdBy": 1,
            "createdDate": "2022-11-10T16:36:07.812762+03:00",
            "modifiedBy": 1,
            "modifiedDate": "2022-11-10T16:36:07.812762+03:00",
            "rowGuid": "0a69ea6f-a937-438f-9c03-cbab4efee2a3"
        }
    ],
    "roles": [
        {
            "id": 28,
            "name": "Biller/Evaluator/Dispenser",
            "normalizedName": "BILLER/EVALUATOR/DISPENSER",
            "concurrencyStamp": "53e7fd67-a49e-4221-b65d-5d273ceb8f4c",
            "userRoles": [
                {
                    "userId": 9,
                    "roleId": 28
                },
                {
                    "userId": 10,
                    "roleId": 28
                }
            ],
            "claims": null,
            "roleMenus": [],
            "rolePermissions": []
        }
    ],
    "institutions": [
        {
            "name": "Emergency Pharmacy",
            "woredaId": 5485,
            "institutionTypeId": 168,
            "parentInstitutionId": 3619,
            "leadTime": 0,
            "safetyStock": 0.5,
            "eop": 1,
            "amcModifier": 1,
            "reportingPeriodTypeId": 10,
            "sn": null,
            "accountCommodityIds": null,
            "woreda": {
                "name": "Hawassa City Special",
                "zoneId": 4228,
                "zone": {
                    "name": "Hawassa City Special",
                    "regionId": 4119,
                    "region": {
                        "name": "SNNP",
                        "id": 4119,
                        "isActive": true,
                        "createdBy": 1,
                        "createdDate": "2018-05-17T11:58:35.863+03:00",
                        "modifiedBy": 1,
                        "modifiedDate": "2018-05-17T11:58:35.087+03:00",
                        "rowGuid": "6091d7f9-86ce-e211-9421-22000aaa1cda"
                    },
                    "id": 4228,
                    "isActive": true,
                    "createdBy": 1,
                    "createdDate": "2018-05-17T11:58:35.933+03:00",
                    "modifiedBy": 1,
                    "modifiedDate": "2018-05-17T11:58:35.927+03:00",
                    "rowGuid": "a991d7f9-86ce-e211-9421-22000aaa1cda"
                },
                "id": 5485,
                "isActive": true,
                "createdBy": 1,
                "createdDate": "2018-05-17T11:58:35.823+03:00",
                "modifiedBy": 1,
                "modifiedDate": "2018-05-17T11:58:35.807+03:00",
                "rowGuid": "fd93d7f9-86ce-e211-9421-22000aaa1cda"
            },
            "reportingPeriodType": {
                "duration": 7,
                "name": "Weekly",
                "code": "WKL",
                "id": 10,
                "isActive": true,
                "createdBy": 1,
                "createdDate": "2019-08-21T15:32:10+03:00",
                "modifiedBy": 1,
                "modifiedDate": "2019-08-21T15:32:20+03:00",
                "rowGuid": "b6d33334-c52a-e911-7512-0e7d04b957e8"
            },
            "institutionType": {
                "parentInstitutionTypeId": null,
                "parentInstitutionType": null,
                "name": "Dispensing Unit",
                "code": "DUT",
                "id": 168,
                "isActive": true,
                "createdBy": 1,
                "createdDate": "2019-09-19T11:43:21.49+03:00",
                "modifiedBy": 1,
                "modifiedDate": "2019-09-19T11:43:21.049+03:00",
                "rowGuid": "cb682a07-f1d5-4ece-929d-846e199a636c"
            },
            "parentInstitution": null,
            "id": 5397,
            "isActive": true,
            "createdBy": 2,
            "createdDate": "2020-08-27T08:11:42.587734+03:00",
            "modifiedBy": 4,
            "modifiedDate": "2022-11-12T07:58:12.922386+03:00",
            "rowGuid": "e13f494c-2269-4b29-8e67-6f550fb8824b"
        }
    ],
    "institutionsCommodityType": [],
    "institutionInventoryState": {
        "institutionId": 5397,
        "freezed": false,
        "hpr": false,
        "rdf": false,
        "inventoryPeriodType": null
    },
    "receivedAccounts": [
        "HPR",
        "RDF"
    ],
    "hasAnnualInventory": {
        "hasValidPermissionForTransaction": true
    }
}"""