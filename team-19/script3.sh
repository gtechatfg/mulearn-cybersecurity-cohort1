#!/usr/bin/env bash
LOG_FILE=$1
inputip= "Enter the ip Address"
function printip_request() {
  passip="$2"
  while read -r line; do
    ip=$(echo "$line" | awk '{print $1}')
    if [[ "${passip} == "$ip" ]]; then
      echo "$line"
    fi
  done < $LOG_FILE
}
printip_request "$input"  
