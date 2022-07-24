#!bin/sh
LOG=/home/user/Desktop/log.txt
SECONDS=3600
echo "Enter the ip address:"
read ip
echo "`date +%d/%m/%y` $ip host is UP!" > $LOG.$ip
while true; do
for ip in $ip; do
ping -c 1 $ip > /dev/null
if [ $? -ne 0 ]; then
STATUS=$(cat $LOG.$ip)
if [[ $STATUS != "$ip-DOWN!" ]]; then
echo "`date +%d/%m/%y`:ping failed,$ip host is down!"
fi
echo "`date +%d/%m/%y`:$ip host is DOWN!" >> $LOG.$ip
else
STATUS=$(cat $LOG.$ip)
if [[ $STATUS != "$ip-UP!" ]]; then
echo "`date +%d/%m/%y`:ping OK,$ip host is UP!"
fi
echo "`date +%d/%m/%y`:$ip host is up!" >> $LOG.$ip
fi
done
sleep $SECONDS
done
