#!/bin/bash

DELAY=10
LOG_FILE="/app/data/monitor.log"

while true; do
    echo "[$(date '+%Y-%m-%d %H:%M:%S')] Логгируем..."
    echo "--- $(date '+%Y-%m-%d %H:%M:%S') ---" >> "$LOG_FILE"
    free -h >> "$LOG_FILE"
    df -h >> "$LOG_FILE"
    uptime >> "$LOG_FILE"
    echo >> "$LOG_FILE"

    sleep "$DELAY"
done
