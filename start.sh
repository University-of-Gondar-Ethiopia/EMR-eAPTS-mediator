#!/bin/bash

# Kill any process using port 8000
fuser -k 8000/tcp

# Activate the virtual environment
. /opt/EMR-eAPTS-mediator/venv/bin/activate

# Change to the directory where your application is located
cd /opt/EMR-eAPTS-mediator/app

# Start the FastAPI application
uvicorn main:app --host 0.0.0.0 --port 8000

