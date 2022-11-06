#!/bin/bash
source .env

ID='44196397'

TIMELINE=$(curl --request GET 'https://api.twitter.com/2/users/'$ID'/tweets' \
--header 'Authorization: Bearer '$BEARER_TOKEN)

echo $TIMELINE

echo '\n'