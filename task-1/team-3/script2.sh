#!/usr/bin/env bash
LOG_FILE="./access.log"
function request_ip() {
    while read line; do
        ip=$(echo $line | awk '{print $1}')
        echo $ip
    done < $LOG_FILE
}
request_ip