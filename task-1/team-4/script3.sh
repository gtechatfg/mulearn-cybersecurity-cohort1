#!/usr/bin/env bash
LOG_FILE="../access.log"
function requests() {
        echo "Enter an IP Adress: "
        read IP
        awk -v pat=$IP '$0~pat{print $6,$7,$8}' $LOG_FILE
}
requests
 
