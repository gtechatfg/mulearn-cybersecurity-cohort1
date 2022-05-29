#!/bin/bash

# Task 2 script 1
# Authors : SANU MUHAMMED C, SHAS, SALMAN FARIS P P, ARSHAD A T, NIHAL VADAKKAN
# Copyright (c) TEAM 23
# Scriot to scan open ports of any machine
# Script follows here

echo "For successfull execution of this script nmap should be installed"
echo "Enter hostname or Ip address"
read ip

# extracting port number only from the nmap command result
portNumber=$(nmap $ip | grep open | awk '{print $1}' | awk -F "/" '{print $1}')

while read line; do
    if [ $line ]; then
        echo 'port ' $line ' of the host ' $ip ' is open.'   
    fi    
done <<< $portNumber   