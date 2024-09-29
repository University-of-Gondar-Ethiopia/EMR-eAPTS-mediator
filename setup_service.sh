#!/bin/bash
set -e

# Make the start.sh script executable
sudo chmod +x start.sh

# Copy the service file to the systemd directory
sudo cp -r app/services/emr_eapts-mediator.service /etc/systemd/system/

# Reload the systemd daemon to recognize the new service
sudo systemctl daemon-reload

# Enable the service to start on boot
sudo systemctl enable emr_eapts-mediator.service

# Start the service immediately
sudo systemctl start emr_eapts-mediator.service

echo "The mediator service has been set up and started successfully."
