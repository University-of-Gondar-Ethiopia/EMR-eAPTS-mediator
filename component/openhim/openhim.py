# a class that handels all the midator regiration, authenication and heartbeat
import requests
import urllib3
from component.openhim.auth import auth
from component.openhim.heartbeat import Heartbeat
from dotenv import load_dotenv
import json
from apscheduler.schedulers.background import BackgroundScheduler
import os

load_dotenv()

class Openhim:
    def __init__(self, options = {"verify_cert": False}):
        self.auth = auth(options)
        self.options = options
        self.scheduler = BackgroundScheduler()
        self.heartbeat = Heartbeat(self.auth, options=options, scheduler=self.scheduler)
    
    def activateHealthbeat(self):
        self.heartbeat.activate()

    def register(self):
        self.auth.authenticate()

        # load config.json file
        with open('component/openhim/config.json') as file:
            self.conf = json.load(file)

        if not self.options['verify_cert']:
            urllib3.disable_warnings(
                urllib3.exceptions.InsecureRequestWarning
            )

        # register mediator
        resp = requests.post(
            url="{}/mediators".format(os.getenv("OPENHIM_ENDPOINT")),
            json=self.conf,
            headers=self.auth.gen_auth_headers(),
            verify=self.options['verify_cert']
        )

        if resp.status_code == 401:
            raise Exception("Authentication failed")
        
        if resp.status_code != 201:
            raise Exception("Received a non-201 response code, the response code was: {}".format(resp.status_code))

        if resp.text == "Created":
            print("Mediator registered successfully")

        return resp.text