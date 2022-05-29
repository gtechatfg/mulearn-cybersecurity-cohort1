#!/bin/bash

# Task 2 script 2
# Authors : SANU MUHAMMED C, SHAS, SALMAN FARIS P P, ARSHAD A T, NIHAL VADAKKAN
# Copyright (c) TEAM 23
# Scriot to monitor the network and create a monitoring log
# Script follows here

function monitor()
{
    flag=$(ping -c 3 $1 > /dev/null;echo $?) #storing the exit code of ping, 0 means host reachable 2 means unreachable
    if [ $flag = 0 ]; then
        echo $(date +%d-%m-%y) $(date +%H:%M) ": ping success, $1 host is up!" >> network.log
    else
        echo $(date +%d-%m-%y) $(date +%H:%M) ": ping failed, $1 host is down!" >> network.log
    fi     
}

echo "Enter the IP address or host name to monitor: "
read ip

while true; do
    monitor $ip
    sleep 1h
done    