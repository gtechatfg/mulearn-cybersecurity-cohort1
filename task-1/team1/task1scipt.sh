#!/bin/sh
LOG_FILE="../access.log"

read -p "Enter IP address: " target"

function request_by_ip( ) {
    while read line; do
        ip=$(echo $line | awk '{print $1}')
        echo $line | grep $target | awk -F "]" '{print "Result: "$2}'
    done < $LOG_FILE
}
request_by_ip
