from typing import Union

from fastapi import FastAPI
from dotenv import load_dotenv
import requests
import os

app = FastAPI()
load_dotenv()

@app.get("/")
def read_root():
    auth = authenticateEAPTS()
    return {"Hello": "World"}


@app.get("/items/{item_id}")
def read_item(item_id: int, q: Union[str, None] = None):
    return {"item_id": item_id, "q": q}



def authenticateEAPTS():
    username = os.getenv("EAPTS_USERNAME")
    password = os.getenv("EAPTS_PASSWORD")
    url = os.getenv("EAPTS_AUTH_ENDPOINT")
    
    data = {
        "username": username,
        "password": password
    }

    # Sending the post request
    response = requests.post(url, json=data, headers={'Content-Type': 'application/json'})

    # Handling the response
    if response.status_code == 200:
        return {"status": "success", "response": response.json()}
    else:
        return {"status": "failure", "response": response.text}


    