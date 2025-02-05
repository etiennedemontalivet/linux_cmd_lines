#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage: $0 <python_script>"
    exit 1
fi

PYTHON_SCRIPT="$1"

while true; do
    python3 "$PYTHON_SCRIPT"
    EXIT_CODE=$?

    if [ $EXIT_CODE -eq 0 ]; then
        echo "Python script exited successfully. Stopping."
        break
    else
        echo "Python script crashed or exited with code $EXIT_CODE. Restarting..."
        sleep 2 # wait before restarting
    fi
done
