#!/bin/bash
source .env

curl --request GET 'https://api.twitter.com/2/users/'$USERID'/tweets' \
--header 'Authorization: Bearer '$BEARER_TOKEN

# TWEET_COUNT=$(curl --request GET 'https://api.twitter.com/2/users/'$USERID'/tweets' \
# --header 'Authorization: Bearer '$BEARER_TOKEN | jq -r '.meta.result_count')

# echo '\n'

# echo '@'$USERNAME ' has tweeted ' $TWEET_COUNT 'times.'

# echo '\n'