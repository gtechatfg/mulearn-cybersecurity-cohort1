#!/usr/bin/env bash
LOG_FILE="../access.log"
function login_attempt() {
	while read line; do
		day=$(echo $line | awk '{print substr($4,2,11)}')
		ip=$(echo $line | awk '{print $1}')
		echo 'On' $day', a login attempt was made, with the request coming from the IP' $ip
	done < $LOG_FILE
}
login_attempt
