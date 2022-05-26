#!/usr/bin/env bash

function check_ping(){
    now=$(date +'%m/%d/%Y')
    status=$(ping -c 10 $1 > /dev/null;echo $?)
    # echo $status
    if [ $status = 0 ];then
        echo "$now : ping success, $1 host is up!" >> monitor.log
    else
        echo "$now : ping failed, $1 host is down!" >> monitor.log
    fi
}

read -p "Enter an IP Address: " inputIP
while true; do
    check_ping $inputIP
    sleep 1h
done
