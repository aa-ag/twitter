#!/bin/bash
source .env

METRICS=$(curl --request GET 'https://api.twitter.com/2/tweets/1480543699620618240?tweet.fields=public_metrics' \
--header 'Authorization: Bearer '$BEARER_TOKEN)

echo $METRICS