from typing import Union

from fastapi import FastAPI
from dotenv import load_dotenv
import requests
import os
from component.emr import EMR
from component.eapts import EAPTS
from component.openhim.auth import auth
from component.openhim.heartbeat import Heartbeat
from apscheduler.schedulers.background import BackgroundScheduler
from component.openhim.openhim import Openhim


app = FastAPI()
load_dotenv()

@app.get("/")
def read_root():
    return testHeartbeat()
    return {"Hello": "World"}


@app.get("/items/{item_id}")
def read_item(item_id: int, q: Union[str, None] = None):
    return {"item_id": item_id, "q": q}

def testAuthenticateEMR():
    emr = EMR()
    return emr.authenticate();

def testAuthenticateEAPTS():
    eapts = EAPTS()
    return  eapts.authenticate();

def testOpenHIMauth():
    auth2 = auth()
    auth2.authenticate()
    return auth2.gen_auth_headers()

def testHeartbeat():
    bgscheduler = BackgroundScheduler()
    hb = Heartbeat(auth(), options = {"verify_cert": False,"urn":"urn:uuid:emr-eapts-interoperability new"}, scheduler = bgscheduler)
    return hb.activate()

def testOpenhimRegistration():
    openhim = Openhim(options = {"verify_cert": False})
    return openhim.register()