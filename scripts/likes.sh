#!/bin/bash
source .env
r=$(curl --request GET 'https://api.twitter.com/2/users/'$USERID'/liked_tweets' \
    --header 'Authorization: Bearer '$BEARER_TOKEN) || exit
# echo $r

meta=$(jq -r '.meta' <<< "$r")
echo $meta

# running=1

# while (( $running != 0 ));
# do
    # r=$(curl --request GET 'https://api.twitter.com/2/users/'$USERID'/liked_tweets' \
    # --header 'Authorization: Bearer '$BEARER_TOKEN)
    # # echo $r
    # meta=$( jq -r '.meta' <<< "{$r}" )
    # echo $meta
    # ((running = 0))
# done

# echo "\n ^^^ Done."