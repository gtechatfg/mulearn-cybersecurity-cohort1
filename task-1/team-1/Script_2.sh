#!/bin/bash
LOG_FILE="../access.log"
function unique_ip( ) {
    while read line; do
        ip=$(echo $line | awk '{print $1}')
        echo $ip
    done < $LOG_FILE
}
unique_ip | uniq
# Team-1
