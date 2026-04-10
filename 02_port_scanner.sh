#!/bin/bash
read -p "Enter IP: " ip
read -p "Enter start port: " start
read -p "Enter end port: " end
for ((port=$start; port<=$end; port++)); do
    nc -zv $ip $port &> /dev/null && echo "Port $port is OPEN"
done
