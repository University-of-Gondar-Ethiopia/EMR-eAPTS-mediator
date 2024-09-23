from typing import List, Dict
from fastapi import FastAPI, HTTPException
from dotenv import load_dotenv
import requests
import json
import os
import sys
from datetime import datetime, timezone, timedelta
sys.path.append(os.path.abspath(os.path.join(os.path.dirname(__file__), '..')))
from component.emr import EMR
from component.eapts import EAPTS

load_dotenv()

CACHE_DURATION_MINUTES = 10  # Cache duration in minutes

# Module-level cache shared across all requests
cache = {}

class StockStatus:
    def __init__(self):
        self.emr = EMR()
        self.eapts = EAPTS()
        self.token = None
        self.emr_headers = self.emr.getAuthHeader()

    def is_cache_valid(self, institutionId: str) -> bool:
        """Check if cached data for the given institutionId is still valid."""
        if institutionId in cache:
            cache_entry = cache[institutionId]
            now = datetime.now(timezone.utc)
            if now - cache_entry['timestamp'] < timedelta(minutes=CACHE_DURATION_MINUTES):
                return True
        return False

    def getStockStatus(self, institutionId: str) -> List[dict]:
        # Check if cache for this institutionId is valid, if so return the cached data
        if self.is_cache_valid(institutionId):
            return cache[institutionId]['data']
        
        # Ensure token is fetched or refreshed
        if self.token is None:
            auth_response = self.eapts.authenticate()
            if auth_response["status"] == "success":
                self.token = auth_response["response"]["token"]["access_token"]
            else:
                raise Exception("Failed to authenticate with EAPTS")

        headers = {'Authorization': f'Bearer {self.token}'}
        response = requests.get(f'{self.eapts.stockStatus_url}?institutionId={institutionId}', headers=headers)
        response.raise_for_status()

        # Cache the response data and set the cache timestamp for this institutionId
        cache[institutionId] = {
            'data': response.json(),
            'timestamp': datetime.now(timezone.utc)
        }

        return cache[institutionId]['data']

    def stockStatusManager(self, institutionId: str):
        try:
            return self.getStockStatus(institutionId)
        except Exception as e:
            raise HTTPException(status_code=500, detail=str(e))