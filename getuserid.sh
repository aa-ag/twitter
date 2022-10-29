#!/bin/bash
read -p 'Enter your username: ' varu

read -sp 'enter your bearer token: ' vart

curl --request GET https://api.twitter.com/2/users/by/username/"$varu" --header 'Authorization: Bearer '"$vart"