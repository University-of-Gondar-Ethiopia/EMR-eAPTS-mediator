from typing import Union

from fastapi import FastAPI, HTTPException
from dotenv import load_dotenv
import requests
import os
from component.emr import EMR
from component.eapts import EAPTS
from component.openhim.auth import auth
from component.openhim.heartbeat import Heartbeat
from apscheduler.schedulers.background import BackgroundScheduler
from component.openhim.openhim import Openhim
from services.prescription import Prescription
from services.drugSync import DrugSync

app = FastAPI()
load_dotenv()

@app.get("/")
def read_root():
    return {"Hello": "World"}

@app.get("/syncPrescription")
def sync_presecription():
    return Prescription().sync()

@app.get("/syncDrugs")
async def sync_drugs():
    manager = DrugSync()
    try:
        fetched_drugs = manager.fetch_drugs_from_eapts()
        drugs_to_process = manager.filter_drugs(fetched_drugs)
        if len(drugs_to_process) == 0:
            return {"status": "success", "message": "Drug Items are up-to-date and consistent between the EMR and eAPTS systems."}
        else:
            try:
                # manager.check_and_update_emr(drugs_to_process)
                return {"status": "success", "message": "Drugs have been registered and updated"}
            except Exception as e:
                raise HTTPException(status_code=500, detail=str(e))
    except Exception as e:
        raise HTTPException(status_code=500, detail=str(e))
    
@app.get("/test/authenicateEMR")
def testAuthenticateEMR():
    emr = EMR()
    return emr.authenticate();

@app.get("/test/authenicateEAPTS")
def testAuthenticateEAPTS():
    eapts = EAPTS()
    return  eapts.authenticate();

@app.get("/test/openhimauth")
def testOpenHIMauth():
    auth2 = auth()
    auth2.authenticate()
    return auth2.gen_auth_headers()

@app.get("/test/heartbeat")
def testHeartbeat():
    bgscheduler = BackgroundScheduler()
    hb = Heartbeat(auth(), options = {"verify_cert": False,"urn":"urn:uuid:emr-eapts-interoperability new"}, scheduler = bgscheduler)
    return hb.activate()

@app.get("/test/register")
def testOpenhimRegistration():
    openhim = Openhim(options = {"verify_cert": False})
    return openhim.register()