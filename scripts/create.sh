#!/bin/bash
source .env

curl -X POST "https://api.twitter.com/2/tweets" -H "Authorization: OAuth $OAUTH_SIGNATURE"

# https://github.com/twitterdev/Twitter-API-v2-sample-code/blob/main/Manage-Tweets/create_tweet.py