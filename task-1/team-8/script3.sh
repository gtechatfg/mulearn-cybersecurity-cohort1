#Script to accept ip and show all its requests

echo "Enter the IP address whose requests are required:"
read ipaddr
grep $ipaddr access.log |sort -u

