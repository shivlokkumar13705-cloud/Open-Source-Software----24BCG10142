#!/bin/bash
# Script 1: System Identity Report
# Author: SHIVLOK KUMAR | Course: Open Source Software

# --- Variables ---
STUDENT_NAME="SHIVLOK KUMAR"
SOFTWARE_CHOICE="Git"

# --- System Information ---
KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
DATE=$(date)

# Get Linux Distribution Name
DISTRO=$(cat /etc/os-release | grep PRETTY_NAME | cut -d '"' -f2)

# --- Display Output ---
echo "======================================="
echo " Open Source Audit — $STUDENT_NAME"
echo "======================================="
echo "Software Chosen : $SOFTWARE_CHOICE"
echo "Distribution    : $DISTRO"
echo "Kernel Version  : $KERNEL"
echo "User            : $USER_NAME"
echo "Uptime          : $UPTIME"
echo "Date & Time     : $DATE"
echo ""
echo "License Info    : Linux is typically licensed under GPL (General Public License)"
echo "======================================="
