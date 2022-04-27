#!/bin/bash

 access.log="$1"
function request_ip() {
    while read line; do
        ip=$(echo $line | awk '{print $1}')
        date=$(echo $line | grep -E -o -i "([0-9]{1,2}[/][a-z]{1,4}[/][0-9]{1,4})")
        echo "On $date, a login attempt was made, with the request coming from the IP $ip"
    done < access.log
}
request_ip 

# a bash script to find all the login attempts and print out the day of the login attempt and the IP address of the user's