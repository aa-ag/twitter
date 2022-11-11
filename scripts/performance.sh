#!/bin/bash
source .env

TWEETS=$(curl --request GET 'https://api.twitter.com/2/users/'$USERID'/tweets' \
--header 'Authorization: Bearer '$BEARER_TOKEN)

echo $TWEETS

# for TWEET in "1480543699620618240" "1475963847076823040"
# do 
# curl --request GET 'https://api.twitter.com/2/tweets/'$TWEET \
# --header 'Authorization: Bearer '$BEARER_TOKEN | jq ".data.text"

# curl --request GET 'https://api.twitter.com/2/tweets/'$TWEET'?tweet.fields=public_metrics' \
# --header 'Authorization: Bearer '$BEARER_TOKEN | jq ".data.public_metrics"

# echo '\n'
# done