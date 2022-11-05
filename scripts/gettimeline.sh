#!/bin/bash
source .env

TIMELINE=$(curl --request GET 'https://api.twitter.com/2/users/'$USERID'/tweets' \
--header 'Authorization: Bearer '$BEARER_TOKEN)

echo $TIMELINE

echo '\n'