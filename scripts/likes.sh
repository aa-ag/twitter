#!/bin/bash
source .env

running=1

total_likes=0

original_url='https://api.twitter.com/2/users/'$USERID'/liked_tweets'
url_and_endpoint=$original_url
token='a'

while (( $running != 0 ));
do
    r=$(curl --request GET $url_and_endpoint --header 'Authorization: Bearer '$BEARER_TOKEN) || exit
    
    likes_count=$(jq -r '.meta.result_count' <<< "$r")
    
    if [ -z "$likes_count" ]; then
        break
    else
        total_likes=$(( $total_likes + $likes_count ))
    fi

    next_token=$(jq -r '.meta.next_token' <<< "$r")

    if [ "$token" == "$next_token" ]; then
        ((running = 0))
    else
        token=$next_token
        url_and_endpoint=$original_url'&next_token='$next_token
    fi
    
    echo '\n'
done

echo '@'$USERNAME' has liked '$total_likes' tweets.'
echo "\n ^^^ Done."