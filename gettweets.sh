#!/bin/bash
source .env

TWEET_COUNT=$(curl --request GET 'https://api.twitter.com/2/users/'$USERID'/tweets' \
--header 'Authorization: Bearer '$BEARER_TOKEN | jq -r '.meta.result_count')

echo '\n'

echo $TWEET_COUNT

echo '\n'