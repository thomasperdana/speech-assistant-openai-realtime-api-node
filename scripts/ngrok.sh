#!/bin/bash

# Script to set up ngrok for local development

echo "Setting up ngrok for local development..."

# Use local ngrok installation via npx instead of global installation
echo "Starting ngrok tunnel on port 5050..."
echo "Use the HTTPS URL below to configure your Twilio number:"
npx ngrok http 5050
