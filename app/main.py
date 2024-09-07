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

@app.get("/drugSync")
async def sync_drugs():
    return DrugSync().drugSyncManager()
    
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