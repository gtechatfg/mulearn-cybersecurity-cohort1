#!/usr/bin/env bash
LOG_FILE="../access.log"
function display_unique_ip() {
    while read line; do
        echo $line | awk '{print $1}' $LOG_FILE | sort | uniq
    done < $LOG_FILE

}
display_unique_ip
