#!/bin/bash
source .env

curl --request GET 'https://api.twitter.com/2/tweets/1263150595717730305?tweet.fields=public_metrics' \
--header 'Authorization: Bearer '$BEARER_TOKEN