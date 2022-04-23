#!/bin/bash

#
#    Author:     Dhanush P N
#    Discord ID: HareKrsna16#0305
#    Github    : https://github.com/HareKrsna16/
#    Youtube   : https://www.youtube.com/channel/UC6JgkC6k0RxLLGx0dDBHv5w
#

while read line
do
	if [[ $line == *'POST'* ]]
	then
		date=$(echo $line | awk '{print $4}' | tr -d "[" | cut -d ":" -f1)
		ip=$(echo $line | awk '{print $1}')
		echo "On ${date} a login attempt was made, with the request coming from the IP $ip"
	fi
done < $1
