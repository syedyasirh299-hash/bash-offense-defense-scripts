#!/bin/bash
cat users.csv | awk -F',' 'NR>1 && $3 < 18 { print "Name: "$2", Age: "$3 }'
