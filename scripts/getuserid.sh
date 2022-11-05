#!/bin/bash
source .env

USERID=$(curl --request GET https://api.twitter.com/2/users/by/username/$USERNAME \
--header 'Authorization: Bearer '$BEARER_TOKEN | jq -r '.data.id')

echo $USERID

echo '\n'