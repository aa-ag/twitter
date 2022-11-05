#!/bin/bash
source .env

# curl --request GET 'https://api.twitter.com/2/tweets/counts/recent?query=from%3ATwitterDev&granularity=day' \
# --header 'Authorization: Bearer '$BEARER_TOKEN

COUNT=$(curl --request GET 'https://api.twitter.com/2/tweets/counts/recent?query=from%3ATwitterDev&granularity=day' \
--header 'Authorization: Bearer '$BEARER_TOKEN | jq -r .meta)

echo $COUNT