#!/bin/bash
source .env

curl --request GET https://api.twitter.com/2/users/by/username/elonmusk --header 'Authorization: Bearer '$BEARER_TOKEN

