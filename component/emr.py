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
        
    def getAuthHeader(self):

        credentials = f"{self.username}:{self.password}"
        encoded_credentials = base64.b64encode(credentials.encode('utf-8')).decode('utf-8')

        # Create the headers with the encoded credentials
        return {
            'Authorization': f'Basic {encoded_credentials}'
        }

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