#!/bin/bash
source .env

for TWEET in "1589024671252770833" "1589023612635582465"
do 
curl --request GET 'https://api.twitter.com/2/tweets/'$TWEET'?tweet.fields=public_metrics' \
--header 'Authorization: Bearer '$BEARER_TOKEN | jq ".data.public_metrics"
done