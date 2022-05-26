#!/usr/bin/env bash

data=$(curl -s 'http://gincy.pythonanywhere.com/getusers' | jq -c '.[]')
result='{}'
for user in ${data[@]};do
    username=$( echo "${user[0]}" | jq -r '.[0]' )
    token=$( curl -s -d '{"username" : "'"${username}"'" }' -H "Content-Type: application/json" -X POST 'http://gincy.pythonanywhere.com/login' | jq -r)
    user_id=$( curl -s -H "Authorization: $token" 'http://gincy.pythonanywhere.com/getid' | jq -r)
    result=$( echo $result | jq ".${username} |= ${user_id}")
done
echo $result