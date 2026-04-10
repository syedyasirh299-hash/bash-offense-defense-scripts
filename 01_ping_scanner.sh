#!/bin/bash

read -p "Enter file path with IPs: " file

for ip in $(cat $file); do
    if ping -c 1 $ip &> /dev/null; then
        echo "$ip is UP"
    else
        echo "$ip is DOWN"
    fi
done
