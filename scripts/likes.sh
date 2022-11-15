#!/bin/bash
source .env

running=1

total_likes=0

url_and_endpoint='https://api.twitter.com/2/users/'$USERID'/liked_tweets'
echo $url_and_endpoint

while (( $running != 0 ));
do
    r=$(curl --request GET $url_and_endpoint --header 'Authorization: Bearer '$BEARER_TOKEN) || exit
    likes_count=$(jq -r '.meta.result_count' <<< "$r")
    total_likes+=likes_count
    next_token=$(jq -r '.meta.next_token' <<< "$r")
    url_and_endpoint=$url_and_endpoint'&next_token='$next_token
    echo $url_and_endpoint
    # ((running = 0))
    # echo '\n'
done

echo '@'$USERNAME' has liked '$likes_count' tweets.'
echo "\n ^^^ Done."