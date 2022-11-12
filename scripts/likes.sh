#!/bin/bash
source .env

DONE=1

while (( $DONE != 0 ));
do
    R=$(curl --request GET 'https://api.twitter.com/2/users/'$USERID'/liked_tweets' \
    --header 'Authorization: Bearer '$BEARER_TOKEN | jq)
    echo $R
    ((DONE = 0))
done

echo "\n ^^^ Done."