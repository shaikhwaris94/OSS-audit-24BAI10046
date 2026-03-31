#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Shaikh Mohammad Warsi
# Course: Open Source Software
# This script audits the installation of Git and interprets its license.

PACKAGE="git"

echo "Checking package status for: $PACKAGE..."

# Using rpm -q for Fedora systems
if rpm -q $PACKAGE &>/dev/null; then
    echo "[FOUND] $PACKAGE is installed on this system."
    echo "----------------------------------------------"
    # Extracting specific metadata
    rpm -qi $PACKAGE | grep -E 'Version|License|Install Date'
    
    echo "----------------------------------------------"
    echo "PHILOSOPHY ANALYSIS:"
    case $PACKAGE in
        git)
            echo "GIT: Distributed version control created by Linus Torvalds."
            echo "Impact: Democratized code collaboration globally."
            ;;
        httpd)
            echo "APACHE: The foundation of the world wide web."
            ;;
        *)
            echo "A valuable component of the Open Source ecosystem."
            ;;
    esac
else
    echo "[MISSING] $PACKAGE is not found. Use 'sudo dnf install $PACKAGE' to fix this."
fi
