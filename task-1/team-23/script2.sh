#!/bin/bash

# Authors : SANU MUHAMMED C, SHAS, SALMAN FARIS P P, ARSHAD A T, NIHAL VADAKKAN
# Copyright (c) TEAM 23
# Script follows here

LOG_FILE="../access.log"
function unique_ip( ) {
    while read line; do
        ip=$(echo $line | awk '{print $1}')
        echo $ip
    done < $LOG_FILE
}
unique_ip | uniq

#Script to print the unique IP adresses 