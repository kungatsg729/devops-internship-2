#!/bin/bash
bash function | tee logs/system.log
cp function backup/scriptbackup
cp logs/system.log backup/backup.log
echo "backup saved successfully"

