#!/usr/bin/env bash
LOG_FILE="../access.log"

read -p "Enter the ip address: " input_ip

function get_request() {
    while read line; do
        ip=$(echo $line | awk '{print $1}')
        if [ $ip == $input_ip ];
        then
            echo $line
        fi
    done < $LOG_FILE
}
get_request