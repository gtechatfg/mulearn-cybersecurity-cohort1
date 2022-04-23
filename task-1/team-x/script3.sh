#!/bin/bash

#
#    Author:     Dhanush P N
#    Discord ID: HareKrsna16#0305
#    Github    : https://github.com/HareKrsna16/
#    Youtube   : https://www.youtube.com/channel/UC6JgkC6k0RxLLGx0dDBHv5w
#

if [[ $1 == '-h' ]]; then
	echo "${0} <logfile> <ip>"
else
	while read line; do
		echo $line | grep $2
	done <$1
fi
