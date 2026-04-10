#!/bin/bash
usage=$(df / | awk 'NR==2 {print $5}' | sed 's/%//')
if [[ $usage -gt 80 ]]; then
    echo "Warning: Disk usage is at ${usage}%"
else
    echo "Disk usage is normal: ${usage}%"
fi
