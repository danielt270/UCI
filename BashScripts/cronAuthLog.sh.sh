#!/bin/bash
tar -cvf ~/backup/auth_backup.tar -C / var/log/auth.log
gzip ~/backup/auth_backup.tar