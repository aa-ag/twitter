#!/bin/bash
read -p 'Enter your username: ' varu

read -sp 'Enter your bearer token: ' vart

echo '\n'

USERID=$(curl --request GET https://api.twitter.com/2/users/by/username/"$varu" \
--header 'Authorization: Bearer '"$vart" | jq -r '.data.id')

echo $USERID

echo '\n'