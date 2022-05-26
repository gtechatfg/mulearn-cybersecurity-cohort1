#!/usr/bin/env bash

PORT_FILE="port_file.txt"

function port_find() {
    echo "--------------------------------------------------------------------------------------"
    sudo nmap -sT -O "$1" >port_file.txt
    port=""
    while read -r line; do
        if [ "$line" = "PORT    STATE SERVICE" ]; then
            re='^[0-9]+$'
            read -r line
            port=$(echo "$line" | awk '{print $1}')
            status=$(echo "$line" | awk '{print $2}')
            p=${port:0:1}
            while [[ $p =~ $re ]]; do
                echo 'port '"$port" 'of the host '"$1" 'is' "$status"
                read -r line
                port=$(echo "$line" | awk '{print $1}')
                p=${port:0:1}
            done
            # echo 'port '"$port" 'of the host '"$1" 'is' "$status"
            # p=$(echo "$line" | awk '{print $1}')
        
        fi
    done <$PORT_FILE
    if [ "$port" = "" ]; then
        printf '%s\n Host seems down. If it is really up, but blocking our ping probes' "$line"
    fi
    rm port_file.txt
}
echo "--------------------------------------------------------------------------------------"
echo "Enter an ip : "
read -r ip
port_find "$ip"
