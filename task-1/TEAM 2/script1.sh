#!/usr/bin/env bash
#Develop a bash script to find all the login attempts and print out the day of the login attempt and the IP address
FILE="access.log"
function scriptOne() {
        while read -r line; do
                ip=$(echo "$line" | grep -E -o "[^^][0-9]{1,3}[.][0-9]{1,3}[.][0-9]{1,3}[.][0-9]{1,3}")
                date=$(echo "$line" | grep -E -o "[0-9]{2}/(Feb|Dec|Jan)/[0-9]{4}")
                echo 'On ' "${date:1:11}"', a login attempt was made, with the request coming from the IP ' $ip
        done < $FILE
}
scriptOne
