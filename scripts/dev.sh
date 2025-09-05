#!/bin/bash

# Development script for Speech Assistant
# Runs the application with nodemon for automatic restarts during development

# Check if nodemon is installed
if ! command -v nodemon &> /dev/null
then
    echo "nodemon is not installed. Installing globally..."
    npm install -g nodemon
fi

echo "Starting development server with nodemon..."
nodemon index.js
