from typing import Union

from fastapi import FastAPI
from dotenv import load_dotenv
import requests
import os
from component.emr import EMR
from component.eapts import EAPTS

app = FastAPI()
load_dotenv()

@app.get("/")
def read_root():
    return testAuthenticateEAPTS()
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

    