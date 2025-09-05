#!/bin/bash

# Setup script for Speech Assistant
echo "Setting up development environment..."

# Check Node.js version
NODE_VERSION=$(node -v)
echo "Node.js version: $NODE_VERSION"

# Check if .env file exists
if [ ! -f .env ]; then
    echo "Creating .env file..."
    cp .env.example .env
    echo "Please update .env with your OpenAI API key"
fi

echo "Setup complete! Remember to:"
echo "1. Update .env with your OpenAI API key"
echo "2. Install ngrok: npm install -g ngrok"
echo "3. Run: node index.js"
