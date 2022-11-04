#!/bin/bash
source .env

HANDLE=$"elonmusk"

curl --request GET 'https://api.twitter.com/2/tweets/counts/recent?query=from%3ATwitterDev&granularity=day' \
--header 'Authorization: Bearer '$BEARER_TOKEN