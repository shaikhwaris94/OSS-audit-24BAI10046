#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Shaikh Mohammad Warsi
# Course: Open Source Software
# This script loops through directories and analyzes 'Safety Scores' based on permissions.

DIRS=("/etc" "/usr/bin" "/home" "/var/log" "/tmp")

echo -e "DIR\t\tSIZE\tPERMS\tOWNER\tSAFETY_NOTE"
echo "----------------------------------------------------------------------"

for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        # Get permissions in octal
        OCTAL=$(stat -c "%a" "$DIR")
        OWNER=$(stat -c "%U" "$DIR")
        # Get size
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
        
        if [ "$OCTAL" == "777" ]; then
            NOTE="[RISKY]"
        elif [ "$OWNER" == "root" ]; then
            NOTE="[SECURE]"
        else
            NOTE="[STANDARD]"
        fi
        
        echo -e "$DIR\t$SIZE\t$OCTAL\t$OWNER\t$NOTE"
    else
        echo -e "$DIR\tN/A\tNOT FOUND"
    fi
done

# Check local Git config
GIT_CONFIG="$HOME/.gitconfig"
if [ -f "$GIT_CONFIG" ]; then
    echo "----------------------------------------------------------------------"
    echo "GIT AUDIT (Rachit Tiwari): Local config found at $GIT_CONFIG"
    ls -l "$GIT_CONFIG"
fi
