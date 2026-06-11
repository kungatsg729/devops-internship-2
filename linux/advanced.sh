#!/bin/bash
bash function | cat > logs/system.log
echo "saving into backup..."
cp function backup/scriptbackup
cp logs/system.log backup/backup.log
echo "backup saved successfully"
docker compose up -d 
echo " You can now view the input on your browser at http://127.0.0.1:5000"
