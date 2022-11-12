#!/bin/bash
source .env

curl --request GET 'https://api.twitter.com/2/users/'$USERID'/liked_tweets' \
--header 'Authorization: Bearer '$BEARER_TOKEN | jq