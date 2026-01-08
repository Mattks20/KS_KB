#!/bin/bash
# Run the application in development mode with auto-reload

echo "Starting application in development mode..."
python -m uvicorn ks_kb.main:app --host 0.0.0.0 --port 8000 --reload
