#!/bin/bash
source .env

curl --request GET \
'https://api.twitter.com/2/tweets/1354143047324299264/retweeted_by?user.fields=created_at&expansions=pinned_tweet_id&tweet.fields=created_at' \
--header 'Authorization: Bearer '$BEARER_TOKEN
