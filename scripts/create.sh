#!/bin/bash
source .env

curl --request POST 'https://api.twitter.com/2/tweets' \
--header 'Authorization: Bearer '$BEARER_TOKEN