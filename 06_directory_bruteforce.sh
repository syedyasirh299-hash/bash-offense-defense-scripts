#!/bin/bash
read -p "Enter URL: " url
read -p "Enter wordlist file path: " wordlist
while read dir; do
    code=$(curl -o /dev/null -s -w "%{http_code}" "$url/$dir")
    if [[ $code -eq 200 ]]; then
        echo "Found: $url/$dir"
    fi
done < $wordlist
