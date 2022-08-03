#!/usr/bin/env bash
function check_port(){
echo "Enter the IP whose open ports are to be checked"
read ip
truncate -s 0 port.txt
sudo nmap $ip -sT -O -oN port.txt
PORT_FILE="port.txt"
i=0
while ((i++));read line; do
        if [[ "$line"==*/* && "$line"!=*//* ]]; then
                port=$(echo $line | awk '{print $1}')
                status=$(echo $line |awk '{print $2}')
           if [ $status=='open' ]; then
                echo 'Port '"$port"' of the host is open'
           fi
        fi
done < $PORT_FILE
}
check_port
