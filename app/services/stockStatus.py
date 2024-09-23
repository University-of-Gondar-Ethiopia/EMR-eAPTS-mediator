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

# Module-level cache shared across all requests
cache = {}

class StockStatus:
    def __init__(self):
        self.emr = EMR()
        self.eapts = EAPTS()
        self.emr_headers = self.emr.getAuthHeader()

    def is_cache_valid(self, institutionId: str) -> bool:
        """Check if cached data for the given institutionId is still valid."""
        if institutionId in cache:
            cache_entry = cache[institutionId]
            now = datetime.now(timezone.utc)
            if now - cache_entry['timestamp'] < timedelta(minutes=int(os.getenv("STOCK_STATUS_CACHE_DURATION_MINUTES", 10))):
                return True
        return False

    def getStockStatus(self, institutionId: str) -> List[dict]:
        # Check if cache for this institutionId is valid, if so return the cached data
        if self.is_cache_valid(institutionId):
            return cache[institutionId]['data']
        
        # Ensure auth header is valid
        try:
            headers = self.eapts.getAuthHeader()  # Fetch the latest auth header
            headers["Content-Type"]="application/json"
        except Exception as e:
            raise HTTPException(status_code=500, detail=str(e))
        
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
