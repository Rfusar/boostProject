#!/bin/bash
clear
port=${1:-8000}
PYTHONDONTWRITEBYTECODE=1 gunicorn server:app -b "0.0.0.0:$port"
