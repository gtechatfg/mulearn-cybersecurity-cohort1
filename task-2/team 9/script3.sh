#!/usr/bin/env bash
curl -s https://gincy.pythonanywhere.com/getusers
echo "-----------------------------------------------------------------------------------------------------------------------------------"
getuser=$(curl -s 'http://gincy.pythonanywhere.com/getusers' | jq -c '.[]') 
out='{}'
for user in ${getuser[@]};do 
        username=$( echo "${user[0]}" | jq -r '.[0]' )
        echo $username 
        token=$( curl -s -d '{"username" : "'"${username}"'" }' -H "Content-Type: application/json" -X POST 'http://gincy.pythonanywhere.com/login' | jq -r) 
        echo $token
        echo "------------------------------------------------------------------------------------------------------------------------------------"
        user_id=$( curl -s -H "Authorization: $token" 'http://gincy.pythonanywhere.com/getid' | jq -r) 
        out=$( echo $out | jq -c ".${username} |= ${user_id}")
done
echo $out
