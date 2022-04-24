#!/usr/bin/env bash
LOG_FILE="$1"

read -p "Enter an IP Address: " inputIP

function filter_requests() {
    while read line; do
        ip=$(echo $line | awk -F " " '{print $1}')
        if [ $ip == $inputIP ];
        then
            echo $line
        fi
    done < $LOG_FILE
}
filter_requests