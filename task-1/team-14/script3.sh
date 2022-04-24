#!/usr/bin/env bash
LOG_FILE="../access.log"
function ip_lookup() {
    cat $LOG_FILE | grep  $1 
}
read -p "Enter the ip to look up : "  ip
ip_lookup $ip
