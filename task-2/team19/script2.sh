#!/usr/bin/env bash
function monitor() {
    date=$(date +%d/%m/%Y)
    s_or_f=""
    u_or_d=""

    ping "$ip" & 
    sleep 5 && pingResponse=$? && kill -9 "$(pgrep ping)"

    if [ $pingResponse -eq 0 ]; then
        u_or_d="up"
        suc_or_fal="success"
    else
        u_or_d="down"
        s_or_f="failed"
    fi

    result="${date} :ping ${s_or_f} $1 host is ${u_or_d}"
    echo "$result"
    echo "$result" >> network_moniter.txt
}
echo "Enter an IP: "
read -r ip
while true; do
    monitor "$ip"
    sleep 60m

done
