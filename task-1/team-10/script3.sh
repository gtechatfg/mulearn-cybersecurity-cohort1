#!/bin/bash

echo "Enter the IP Adress: "
read ip
cd ~
grep -r $ip  $(find -name access.log)

# bash script that takes an IP address as input and prints out all of the requests made by that specific IP address.