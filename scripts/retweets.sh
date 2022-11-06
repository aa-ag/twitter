#!/bin/bash
source .env

for TWEET in '1480543699620618240' '1475963847076823040'
do
    TEXT=$(curl --request GET \
    'https://api.twitter.com/2/tweets/'$TWEET\
    '/retweeted_by?user.fields=created_at&expansions=pinned_tweet_id&tweet.fields=created_at' \
    --header 'Authorization: Bearer '$BEARER_TOKEN  | jq -r .data.text)
    echo $TEXT
done