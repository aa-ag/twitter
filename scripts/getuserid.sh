#!/bin/bash
source .env

HANDLE="elonmusk"

USERID=$(curl --request GET https://api.twitter.com/2/users/by/username/$HANDLE \
--header 'Authorization: Bearer '$BEARER_TOKEN | jq -r '.data.id')

echo $USERID

echo '\n'