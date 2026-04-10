#!/bin/bash
read -p "Enter username: " user
if grep -q "^$user:" /etc/passwd; then
    echo "User $user exists"
else
    echo "User $user does not exist"
fi
