#!/usr/bin/env bash
#Create a bash script that takes an IP address as input and prints out all of the requests made by that specific IP address.
FILE="access.log"
read -p "what is the ip address?" inp
function scriptThree() {
        while read -r line; do
        ip=$(echo $line | awk -F " " '{print $1}')
        if [ $inp = $ip ]; then
                echo $line
        fi
        done<$FILE
}
scriptThree
