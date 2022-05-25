#!/usr/bin/env bash

LOG_FILE="access.log"

while read line; do
   ipaddr=$(echo $line | awk '{print $1}')
   day=$(echo $line | awk '{print $4}')
echo 'On '"${day:1:11}"',a login attempt was made, with the request from IP address '"$ipaddr"
done < $LOG_FILE

