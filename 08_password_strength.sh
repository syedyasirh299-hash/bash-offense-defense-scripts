#!/bin/bash
read -p "Enter password: " pass
if [[ ${#pass} -ge 8 && "$pass" =~ [A-Z] && "$pass" =~ [a-z] && "$pass" =~ [0-9] ]]; then
    echo "Password is Strong"
else
    echo "Password is Weak"
fi
