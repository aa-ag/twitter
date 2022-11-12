#!/bin/bash
source .env

read var1 var2 var3 <<< $(curl -s 'https://api.github.com/repos/torvalds/linux' | jq -r '.id, .name, .full_name')

echo $var1
# read r meta < <(echo $(curl --request GET 'https://api.twitter.com/2/users/'$USERID'/liked_tweets' \
#     --header 'Authorization: Bearer '$BEARER_TOKEN | jq -r '.data .meta'))
#  echo $meta

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