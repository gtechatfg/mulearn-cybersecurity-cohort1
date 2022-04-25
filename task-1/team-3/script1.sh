#!/usr/bin/env bash
LOG_FILE="../access.log"
function request_ip() {
    while read line; do
        ip=$(echo $line | awk '{print $1}')
	date=$(echo $line | awk '{print $4}')
        echo "on $date, a login attempt was made,with the request coming from the IP $ip "
    done < $LOG_FILE
}
request_ip
#this sample script prints the IPs that have tried to access the server
