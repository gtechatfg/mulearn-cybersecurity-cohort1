#!/bin/bash

#
#    Author:     Dhanush P N
#    Discord ID: HareKrsna16#0305
#    Github    : https://github.com/HareKrsna16/
#    Youtube   : https://www.youtube.com/channel/UC6JgkC6k0RxLLGx0dDBHv5w
#

echo $(cat $1 | egrep -o '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}') | tr ' ' '\n' | sort -u
