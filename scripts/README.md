# Development Environment Setup

This directory contains scripts to help set up and manage your development environment for the Speech Assistant project.

## Available Scripts

### init.sh
Sets up the basic development environment:
- Checks Node.js version (requires 18+)
- Creates .env file from .env.example if it doesn't exist
- Provides instructions for next steps

Usage:
```bash
./init.sh
```

## Manual Setup Steps

If you prefer to set up manually, follow these steps:

1. **Verify Node.js version** (18+):
   ```bash
   node --version
   ```

2. **Install dependencies**:
   ```bash
   npm install
   ```

3. **Create environment file**:
   ```bash
   cp .env.example .env
   ```

4. **Update environment variables**:
   Edit the `.env` file and add your OpenAI API key:
   ```
   OPENAI_API_KEY=your_actual_api_key_here
   ```

5. **Install ngrok for testing**:
   ```bash
   npm install -g ngrok
   ```

6. **Run the application**:
   ```bash
   node index.js
   ```

## Development Workflow

### Running the Application
```bash
node index.js
```

### Running with Automatic Restarts (Development)
Install nodemon globally:
```bash
npm install -g nodemon
```

Run with nodemon:
```bash
nodemon index.js
```

## Testing

To test the application:

1. Start ngrok to expose your local server:
   ```bash
   ngrok http 5050
   ```

2. Configure your Twilio phone number to point to your ngrok URL.

3. Call your Twilio number to test the voice assistant.

## Troubleshooting

### Common Issues

1. **Node.js version**: Ensure you're using Node.js 18 or higher.

2. **Missing dependencies**: If you encounter module not found errors:
   ```bash
   rm -rf node_modules package-lock.json
   npm install
   ```

3. **Port conflicts**: Change the port by setting the PORT environment variable:
   ```bash
   PORT=3000 node index.js
   ```

4. **API key issues**: Verify your OpenAI API key is correct and has Realtime API access.
