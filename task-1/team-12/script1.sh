#!/bin/bash

# Using AWK find the IP Adresses and dates from a line in the log file and then formating and displaying the output using echo.

while read l; do
    ipadd=$(echo $l | awk '{print $1}')
    date=$(echo $l | awk '{print substr($4,2,length($4)-10)}')
    if [[ $date = "" ]]; then
        continue
    fi
    echo 'On '$date", a login attempt was made, with the request coming from the IP "$ipadd
done < $1