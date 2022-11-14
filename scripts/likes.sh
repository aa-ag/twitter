#!/bin/bash
source .env

running=1

total_likes=0

while (( $running != 0 ));
do
    r=$(curl --request GET 'https://api.twitter.com/2/users/'$USERID'/liked_tweets' \
    --header 'Authorization: Bearer '$BEARER_TOKEN) || exit
    # echo $r
    likes_count=$(jq -r '.meta.result_count' <<< "$r")
    total_likes+=likes_count
    # next_token=$(jq -r '.meta.next_token' <<< "$r")
    # echo $next_token
    ((running = 0))
done

echo '@'$USERNAME' has liked '$likes_count' tweets.'
echo "\n ^^^ Done."