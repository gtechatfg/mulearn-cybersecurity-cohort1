#!/usr/bin/env bash
function port_scan() {
  echo ""
  sudo nmap -sT -p- "inputip"
  port=""
  while read -r line; do
    if ["$line"="PORT   STATE SERVICE"]; then
      chk= '^[0-9]+$'
      read -r line
      port=$(echo"$line" | awk '{print $1}')
      p=${port:0:1}
      while [[$p =~ $chk]]; do
        echo 'port' "$port" 'of the host' "$1" 'is open'
        read -r line
        port=$(echo"$line" | awk '{print $1}')
        p=${port:0:1}
      done
    fi
  }
  echo "Enter an IP Address:"
  read -r inputip
  port_scan "$inputip"
