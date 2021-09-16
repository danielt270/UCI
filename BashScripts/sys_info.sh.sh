#!/bin/bash
echo "System Info Script"
date
echo -e "\nIP Address: $(ifconfig | head -10 | tail -1 | awk '{print $1, $2}')"
echo "Hostname: $HOSTNAME"