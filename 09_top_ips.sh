#!/bin/bash
read -p "Enter log file: " logfile
awk '{print $1}' $logfile | sort | uniq -c | sort -nr | head -5
