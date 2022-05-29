#!/bin/bash

# Task 2 script 3,4,5
# Authors : SANU MUHAMMED C, SHAS, SALMAN FARIS P P, ARSHAD A T, NIHAL VADAKKAN
# Copyright (c) TEAM 23
# Script follows here

url="http://gincy.pythonanywhere.com" 
#endpoints: /getusers, /login, /getid

userId='{}'

request=$(curl -s $url/getusers | jq -c -r '.[][0]') #user name list

for username in $request;do
    token=$( curl -s -d '{"username" : "'"${username}"'" }' -H "Content-Type: application/json" -X POST ${url}/login | jq -r)
    user_id=$( curl -s -H "Authorization: $token" $url/getid | jq -r)
    userId=$( echo $userId | jq ".${username}.userId |= ${user_id}")
done   

echo $userId