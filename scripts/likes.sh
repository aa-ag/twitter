#!/bin/bash
source .env

running=1

total_likes=0

original_url='https://api.twitter.com/2/users/'$USERID'/liked_tweets'
url_and_endpoint=$original_url

while (( $running != 0 ));
do
    r=$(curl --request GET $url_and_endpoint --header 'Authorization: Bearer '$BEARER_TOKEN) || exit
    
    likes_count=$(jq -r '.meta.result_count' <<< "$r")
    
    total_likes+=likes_count
    
    next_token=$(jq -r '.meta.next_token' <<< "$r")
    url_and_endpoint=$original_url'&next_token='$next_token
    echo $url_and_endpoint
    
    ((running = 0))
    echo '\n'
done

echo '@'$USERNAME' has liked '$likes_count' tweets.'
echo "\n ^^^ Done."