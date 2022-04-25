#!/bin/bash

# Authors : SANU MUHAMMED C, SHAS, SALMAN FARIS P P, ARSHAD A T, NIHAL VADAKKAN
# Copyright (c) TEAM 23
# Script follows here

LOG_FILE="../access.log"
function get_login( ) {
    while read line; do
        ip=$(echo $line | awk '{print $1}')
        date=$(echo $line | awk -F "[" '{print $2}' | awk -F ":" '{print $1}')
        echo 'On' $date', a login attempt was made, with the request coming from the IP ' $ip
    done < $LOG_FILE
}
get_login

#Script to print the IP's that have made login attempts along with respective date

