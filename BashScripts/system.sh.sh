#!/bin/bash
free -h | head -2 | tail -1 | awk '{print $1, $4}' > ~/backups/freemem/free_mem.txt
df -h | awk '{print $1, $5, $6}' | grep -vw 0% > ~/backups/diskuse/disk_usage.txt
lsof > ~/backups/openlist/open_list.txt
df -h > ~/backups/freedisk/free_disk.txt