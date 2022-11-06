#!/bin/bash
source .env

TWEETS = ''

for TWEET in "1589024671252770833" "1589023612635582465" \
"1589023388676554753" "1589022702828158978" "1589022495189127169" \
"1589021467005816833" "1589020949822963715" "1589020644007874560" \
"1589019394449240064" "1589019295295897600"
do
    TEXT=$(curl --request GET \
    'https://api.twitter.com/2/tweets/'$TWEET\
    '/retweeted_by?user.fields=created_at&expansions=pinned_tweet_id&tweet.fields=created_at' \
    --header 'Authorization: Bearer '$BEARER_TOKEN  | jq -r .data.text)
    TWEETS+=$TEXT'\n'
done

echo $TWEETS