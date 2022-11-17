#!/bin/bash
source .env

curl -d '{"text": "Hello World!"}' -H "Content-Type: application/json" \
-X POST 'https://api.twitter.com/2/tweets' \
--header 'Authorization: Bearer '$BEARER_TOKEN