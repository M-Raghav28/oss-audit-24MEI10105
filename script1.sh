#!/bin/bash

NAME="Raghav"
SOFTWARE="Linux Kernel"

KERNEL_VER=$(uname -r)
CURRENT_USER=$(whoami)
SYSTEM_UPTIME=$(uptime -p 2>/dev/null || echo "uptime info not available")
TODAY=$(date)
HOME_PATH=$HOME

echo "----------------------------------------"
echo "Open Source Audit Report - $NAME"
echo "----------------------------------------"
echo "Selected Software : $SOFTWARE"
echo "Kernel Version    : $KERNEL_VER"
echo "User              : $CURRENT_USER"
echo "Home Directory    : $HOME_PATH"
echo "System Uptime     : $SYSTEM_UPTIME"
echo "Current Date/Time : $TODAY"
echo "Environment       : Online Bash"
echo "License Info      : GNU GPL"
echo "----------------------------------------"
