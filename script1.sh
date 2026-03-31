#!/bin/bash
# Script 1: System Identity Report 
# Author: Shaikh Mohammad Warsi
# Course: Open Source Software
# This script identifies the system and highlights its Open Source status.

STUDENT_NAME="Shaikh Mohammad Warsi"
SOFTWARE_CHOICE="Git"

# Using /etc/os-release for dynamic distro detection
DISTRO=$(grep "^NAME=" /etc/os-release | cut -d= -f2 | tr -d '"')
VERSION=$(grep "^VERSION_ID=" /etc/os-release | cut -d= -f2 | tr -d '"')
KERNEL=$(uname -r)
UPTIME=$(uptime -p)
CURRENT_TIME=$(date "+%Y-%m-%d %H:%M:%S")

echo "--------------------------------------------------"
echo "   OPEN SOURCE AUDIT: SYSTEM IDENTITY REPORT      "
echo "--------------------------------------------------"
echo "Auditor     : $STUDENT_NAME"
echo "Project Target: $SOFTWARE_CHOICE"
echo "--------------------------------------------------"
echo "OS Distro   : $DISTRO (v$VERSION)"
echo "Kernel      : $KERNEL"
echo "Current Time: $CURRENT_TIME"
echo "Uptime      : $UPTIME"
echo "--------------------------------------------------"
echo "PHILOSOPHY NOTE:"
echo "This system is powered by $DISTRO, a community-driven"
echo "Linux distribution protected by various FOSS licenses"
echo "including the GNU GPL. Knowledge belongs to all."
echo "--------------------------------------------------"
