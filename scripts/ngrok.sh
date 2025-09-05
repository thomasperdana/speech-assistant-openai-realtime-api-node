#!/bin/bash

# Script to set up ngrok for local development

echo "Setting up ngrok for local development..."

# Check if ngrok is installed
if ! command -v ngrok &> /dev/null
then
    echo "ngrok is not installed. Installing globally..."
    npm install -g ngrok
fi

echo "Starting ngrok tunnel on port 5050..."
echo "Use the HTTPS URL below to configure your Twilio number:"
ngrok http 5050
