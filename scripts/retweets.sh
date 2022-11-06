#!/bin/bash
source .env

for tweet in '1480543699620618240'.. '1475963847076823040'
do
    curl --request GET \
    'https://api.twitter.com/2/tweets/'$tweet\
    '/retweeted_by?user.fields=created_at&expansions=pinned_tweet_id&tweet.fields=created_at' \
    --header 'Authorization: Bearer '$BEARER_TOKEN
done