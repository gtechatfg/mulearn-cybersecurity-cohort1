#!/bin/bash
LOG_FILE="../access.log"
function get_login( ) {
    while read line; do
        ip=$(echo $line | awk '{print $1}')
        date=$(echo $line | awk -F "[" '{print $2}' | awk -F ":" '{print $1}')
        echo 'On' $date', a login attempt was made, with the request coming from the IP ' $ip
    done < $LOG_FILE
}
# Team - 1
