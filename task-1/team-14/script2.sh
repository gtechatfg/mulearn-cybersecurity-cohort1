#!/usr/bin/env bash
LOG_FILE="../access.log"
function unique_ip() {
    declare -a ipArray 
    while read line; do
        ip=$(echo $line | awk '{print $1}')
        ipArray+=("${ip}")
    done < $LOG_FILE
    printf "%s \n" "${ipArray[@]}" | sort -u 
}
unique_ip
