#!/usr/bin/env bash
LOG_FILE="$1"

function get_ip() {
    while read line; do
        ip=$(echo $line | awk '{print $1}')
        echo $ip 
    done < $LOG_FILE
}

get_ip | sort | uniq