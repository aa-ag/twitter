#!/bin/bash
source .env

curl --request GET 'https://api.twitter.com/2/users/'$USERID'/mentions?tweet.fields=context_annotations' \
--header 'Authorization: Bearer '$BEARER_TOKEN