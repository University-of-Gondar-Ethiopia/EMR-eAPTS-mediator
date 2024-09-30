#!/bin/bash
set -e

# Function to handle errors
handle_error() {
    echo "Error occurred in the script at line $1."
    exit 1
}

# Install dependencies
pip install -r requirements.txt || handle_error $LINENO

# Make the start.sh script executable
sudo chmod +x start.sh || handle_error $LINENO

# Create virtual enviroment for python
sudo  python3 -m venv /opt/EMR-eAPTS-mediator/venv

# Copy the service file to the systemd directory
sudo cp -r app/services/emr_eapts-mediator.service /etc/systemd/system/ || handle_error $LINENO

# Reload the systemd daemon to recognize the new service
sudo systemctl daemon-reload || handle_error $LINENO

# Enable the service to start on boot
sudo systemctl enable emr_eapts-mediator.service || handle_error $LINENO

# Start the service immediately
sudo systemctl start emr_eapts-mediator.service || handle_error $LINENO

# Register the mediator to OpenHIM
curl -f http://localhost:8000/test/register || handle_error $LINENO

echo "The mediator service setup was successful."