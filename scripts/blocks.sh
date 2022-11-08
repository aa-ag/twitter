#!/bin/bash
source .env

curl --request GET 'https://api.twitter.com/2/users/'$USERID'/blocking' \
--header 'authorization: OAuth oauth_consumer_key="'$API_KEY'", oauth_nonce="OAUTH_NONCE", oauth_signature="OAUTH_SIGNATURE", oauth_signature_method="HMAC-SHA1", oauth_timestamp="OAUTH_TIMESTAMP", oauth_token="ACCESS_TOKEN", oauth_version="1.0"'