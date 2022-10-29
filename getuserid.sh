#!/bin/bash
read -p 'Enter your username: ' varu

read -sp 'Enter your bearer token: ' vart

echo '\n'

RES=$(curl --request GET https://api.twitter.com/2/users/by/username/"$varu" --header 'Authorization: Bearer '"$vart")

echo $RES

echo '\n'