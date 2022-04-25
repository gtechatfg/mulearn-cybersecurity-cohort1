#!/bin/bash

# Authors : SANU MUHAMMED C, SHAS, SALMAN FARIS P P, ARSHAD A T, NIHAL VADAKKAN
# Copyright (c) TEAM 23
# Script follows here

LOG_FILE="../access.log"

read -p "Enter IP address to see requests: " target

function request_by_ip( ) {
    while read line; do
        ip=$(echo $line | awk '{print $1}')

        if [ $ip == $target ];
        then
            echo $line | awk -F "]" '{print $2}'
        fi

    done < $LOG_FILE
}
request_by_ip

#Script that takes an IP address as input and prints out all of the requests made by that specific IP address.