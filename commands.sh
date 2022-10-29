#!/bin/bash
echo enter your username: 

read varu

echo enter your bearer token: 

read vart

curl --request GET https://api.twitter.com/2/users/by/username/"$varu" --header 'Authorization: Bearer '"$vart"