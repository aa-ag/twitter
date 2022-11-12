#!/bin/bash
source .env

DONE=4

while [ $DONE -gt 1 ];
do
    echo 'Not Done.'
    # R=$(curl --request GET 'https://api.twitter.com/2/users/'$USERID'/liked_tweets' \
    # --header 'Authorization: Bearer '$BEARER_TOKEN | jq)
    # echo $R
    ((DONE--))
done

echo "Done."