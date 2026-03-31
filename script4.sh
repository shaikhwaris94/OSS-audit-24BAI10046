#!/bin/bash
# Script 4: Log File Analyzer
# Author: Shaikh Mohammad Warsi
# Course: Open Source Software
# Analyzes system logs for errors and warnings.

# Default to /var/log/messages or use the first argument
LOGFILE=${1:-"/home/rachit07/mylog.txt"}
KEYWORD=${2:-"error"}
COUNT=0
MATCHES=""

# Check if file exists AND is readable. If not, fallback to journalctl.
# This fixes the "Permission denied" error seen on Fedora.
if [ ! -r "$LOGFILE" ]; then
    echo "Warning: $LOGFILE is not readable or does not exist."
    echo "Accessing system journal via journalctl as a fallback..."
    journalctl -n 100 > ./temp_log.txt
    LOGFILE="./temp_log.txt"
fi

# Ensure the file isn't empty (Do-while style check)
if [ ! -s "$LOGFILE" ]; then
    echo "Error: No log data available to analyze."
    [ -f "./temp_log.txt" ] && rm ./temp_log.txt
    exit 1
fi

echo "Scanning $LOGFILE for '$KEYWORD' events..."
echo "--------------------------------------------------"

# Read line by line
while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        ((COUNT++))
        # Store the match for the tail summary
        MATCHES+="$LINE"$'\n'
    fi
done < "$LOGFILE"

# Display Summary
echo "SCAN SUMMARY BY Shaikh Mohammad Warsi"
echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"
echo "--------------------------------------------------"

# Print the last 5 matching lines if any were found
if [ $COUNT -gt 0 ]; then
    echo "Last 5 matching entries:"
    echo "$MATCHES" | tail -n 5
else
    echo "No matching entries found."
fi

# Cleanup
[ -f "./temp_log.txt" ] && rm ./temp_log.txt
