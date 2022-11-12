#!/bin/bash
source .env

TWEETS=$(curl --request GET 'https://api.twitter.com/2/users/'$USERID'/tweets' \
--header 'Authorization: Bearer '$BEARER_TOKEN | jq -r '.data[].id')

echo $TWEETS
# for TWEET in $TWEETS
# do
# echo $TWEET 
# curl --request GET 'https://api.twitter.com/2/tweets/'$TWEET \
# --header 'Authorization: Bearer '$BEARER_TOKEN

# curl --request GET 'https://api.twitter.com/2/tweets/'$TWEET'?tweet.fields=public_metrics' \
# --header 'Authorization: Bearer '$BEARER_TOKEN | jq ".data.public_metrics"

# echo '\n'
# done