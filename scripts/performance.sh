#!/bin/bash
source .env

TWEETS=$(curl --request GET 'https://api.twitter.com/2/users/69008563/tweets' \
--header 'Authorization: Bearer '$BEARER_TOKEN | jq -r '.data[].id')

for TWEET in $TWEETS
do
curl --request GET 'https://api.twitter.com/2/tweets/'$TWEET \
--header 'Authorization: Bearer '$BEARER_TOKEN | jq ".data.text"

curl --request GET 'https://api.twitter.com/2/tweets/'$TWEET'?tweet.fields=public_metrics' \
--header 'Authorization: Bearer '$BEARER_TOKEN | jq ".data.public_metrics"

echo '\n'
done