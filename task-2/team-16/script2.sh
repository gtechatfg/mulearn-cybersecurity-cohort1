#!/usr/bin/env bash


function status_record() {
    time=$(date +%k:%M:%S)
    date=$(date +%d/%m/%Y)
    suc_or_fal=""
    up_or_down=""


    ping 103.153.105.81 & 
    sleep 5 && pingResponse=$? && kill -9 "$(pgrep ping)"
    

    if [ $pingResponse -eq 0 ]; then
        up_or_down="up"
        suc_or_fal="success"
    else
        up_or_down="not up"
        suc_or_fal="failed"
    fi

    result="${time} => ${date} :ping ${suc_or_fal} 142.250.67.174 host is ${up_or_down}"
    echo "$result"
    echo "$result" >> host_network_moniter.txt
}
while true; do
    status_record
    sleep 1m

done
