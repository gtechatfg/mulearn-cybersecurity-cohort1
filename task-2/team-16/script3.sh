#!/usr/bin/env bash
LOG_FILE="../access.log"
read -rp "Enter an IP (Pressing enter uses 42.236.10.125): " input
input=${input:-"42.236.10.125"}
function ipdetail () {
    local givenIp="$1"

    while read -r line; do
        ip=$(echo "$line" | awk '{print $1}')
        if [[ "${givenIp}" == "${ip}" ]]; then
            echo "$line"
            echo "--------------------------------------------------------------------------------------"
        fi
        
    done < $LOG_FILE
    
}
ipdetail "${input}"