#!/usr/bin/env bash

read -p "Enter an IP Address: " inputIP

res=$(nmap -sT -Pn $inputIP)
i=0

while ((i++));read line; do

    if [ "$i" -eq 2 ];then
        ip="$( echo $line | awk -F "(" '{print $2}' | awk -F ")" '{print $1}' )"
    fi

    if [[ "$line" = */* && "$line" != *//* ]]; then

        status="$(echo $line | awk '{print $2}')"
        
        if [ "$status" = "open" ];then
            printf "port $(echo $line | awk -F "/" '{print $1}') of $ip is open.\n"
        fi
    
    fi

done <<< "$res"
