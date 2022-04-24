#!/bin/bash

#95.52.125.163 - - [19/Dec/2020:20:51:02 +0100] "GET /images/stories/raith/almenland_logo.jpg HTTP/1.1" 200 21490 "http://www.almhuette-raith.at/" "Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.195 Safari/537.36" "-"
#$1

LOGFILE=$1
read $LOGFILE;
while read l; do
    ipadd=$(echo $l | awk '{print $1}')
    date=$(echo $l | awk '{print substr($4,2,length($4)-10)}')

    echo 'On '$date", a login attempt was made, with the request coming from the IP "$ipadd
done < $LOGFILE