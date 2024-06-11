#!/bin/bash
clear
port=${1:-8000}
PYTHONDONTWRITEBYTECODE=1 uvicorn server:app --host 0.0.0.0 --port $port
