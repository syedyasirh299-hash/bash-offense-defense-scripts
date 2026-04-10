#!/bin/bash
read -p "Enter folder to backup: " folder
timestamp=$(date +%Y%m%d_%H%M%S)
backup_name="${folder}_backup_$timestamp"
cp -r $folder $backup_name
echo "Backup created as $backup_name"
