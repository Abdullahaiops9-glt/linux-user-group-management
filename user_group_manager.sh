#!/bin/bash

LOGFILE="user_mgmt.log"
DATE=$(date "+%Y-%m-%d %H:%M:%S")

# Root check
if [[ $EUID -ne 0 ]]; then
    echo "ERROR: Please run this script as root or with sudo."
    exit 1
fi

read -p "Enter username to create: " USER
read -p "Enter group name: " GROUP

# Create group if not exists
if getent group "$GROUP" > /dev/null; then
    echo "$DATE INFO: Group '$GROUP' already exists." >> $LOGFILE
else
    groupadd "$GROUP"
    echo "$DATE INFO: Group '$GROUP' created." >> $LOGFILE
fi

# Create user
if id "$USER" &>/dev/null; then
    echo "$DATE WARNING: User '$USER' already exists." >> $LOGFILE
else
    useradd -m -g "$GROUP" "$USER"
    echo "$DATE INFO: User '$USER' created and added to group '$GROUP'." >> $LOGFILE
fi

echo "Operation completed. Check log file for details."
