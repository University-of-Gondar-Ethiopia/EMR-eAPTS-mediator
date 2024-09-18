import requests
import urllib3
from component.openhim.auth import auth
from dotenv import load_dotenv 
import os
from uptime import uptime

load_dotenv()

class Heartbeat:
    def __init__(self, auth, options = {"verify_cert": False, "urn":"openhim"}, **kwargs):
        self.auth = auth
        self.options = options
        self.__scheduler = kwargs['scheduler']
        self.__job = None
        self.url = os.getenv("OPENHIM_ENDPOINT")

    def _send(self):
        body = {'uptime': uptime()}

        if not self.options['verify_cert']:
            urllib3.disable_warnings(
                urllib3.exceptions.InsecureRequestWarning
            )

        # print heartbeat log
        print("Heartbeat: {}".format(body))

        # send heartbeat
        mediators_url = "{}/mediators/{}/heartbeat".format(self.url, self.options['urn'])
        response = requests.post(
            url=mediators_url,
            verify=self.options['verify_cert'],
            json=body,
            headers=self.auth.gen_auth_headers()
        )

        if response.status_code != 200:
            raise Exception(
                "Heartbeat unsuccessful, received status code of {}".format(response.status_code)
            )

    def activate(self):
        self.auth.authenticate()
        if self.__job is None:
            self.__job = self.__scheduler.add_job(
                self._send,
                'interval',
                seconds= os.getenv("HEARTBEAT_INTERVAL") or self.options.get('interval') or 10
            )
            self.__scheduler.start()

    def deactivate(self):
        if self.__job is not None:
            self.__job.remove()

    def fetch_config(self):
        self.auth.authenticate()
        return self._send(True)
