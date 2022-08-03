#!/usr/bin/env bash
function check_status(){ 
        dt=$(date +'%d/%m/%Y') 
        tm=$(date +'%T')
        st=$(ping -c 1 $1;echo $?)
        if [ $st==0 ];then 
                echo "$dt" "$tm"' : ping success,'"$ip"'host is up!'
                echo "$dt" "$tm"' : ping success,'"$ip"' host is up!' >> pin>
        else
                echo "$dt" "$tm"' :ping failed,'"$ip"' host is down!'
                echo "$dt" "$tm"' : ping failed,'"$ip"' host is down!' >> pi>
        fi
}
echo "Enter an IP Address: " 
read ip
while true; do 
        check_status $ip 
        sleep 1h
done
