#!/bin/bash

# Using AWK to filer the IP Addresses and then sorting and finding the unique IP Addresses using sort and uniq

echo "IP Addresses"
echo "------------"
awk '{print $1}' $1 | sort | uniq -u