#!/bin/sh
echo "Enter the ip address of machine:"
read ip
hostname=$ip
for port in {1..65535};do
	2>/dev/null echo > /dev/tcp/$hostname/$port
	 if [ $? == 0 ]
	then
		{
			echo "$port of the host $ip is open"
		}
	fi
done
