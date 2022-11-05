#!/bin/bash
source .env

HANDLE=$"elonmusk"

SOMEONESID=$(curl --request GET https://api.twitter.com/2/users/by/username/$HANDLE \
--header 'Authorization: Bearer '$BEARER_TOKEN | jq -r '.data.id')

TWEET_COUNT=$(curl --request GET 'https://api.twitter.com/2/users/'$SOMEONESID'/tweets' \
--header 'Authorization: Bearer '$BEARER_TOKEN | jq -r '.meta.result_count')

echo '\n'

echo '@'$HANDLE ' has tweeted ' $TWEET_COUNT 'times.'

echo '\n'
