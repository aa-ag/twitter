#!/bin/bash
source .env

curl --request GET 'https://api.twitter.com/2/users/'$USERID'/tweets' \
--header 'Authorization: Bearer '$BEARER_TOKEN