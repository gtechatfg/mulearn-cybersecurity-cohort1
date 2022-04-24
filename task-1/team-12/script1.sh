#!/bin/bash

#95.52.125.163 - - [19/Dec/2020:20:51:02 +0100] "GET /images/stories/raith/almenland_logo.jpg HTTP/1.1" 200 21490 "http://www.almhuette-raith.at/" "Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.195 Safari/537.36" "-"


LOGFILE=$1
while read l; do
    echo $l | awk '{print $1}'
done < $LOGFILE