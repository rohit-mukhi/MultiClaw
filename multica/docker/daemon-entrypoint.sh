#!/bin/sh

CONFIG="/home/node/.multica/config.json"

multica config set server_url http://backend:8080 >/dev/null 2>&1 || true
multica config set app_url http://localhost:3000 >/dev/null 2>&1 || true

if [ -f "$CONFIG" ] && grep -q '"token"' "$CONFIG"; then
    echo "Token found. Starting multica daemon..."
    exec multica daemon start --foreground
else
    echo "No auth token found. Container is idle."
    echo "Run: multica-control login"
    exec tail -f /dev/null
fi
