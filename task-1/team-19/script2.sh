#!/usr/bin/env bash
echo "Unique IP Addresses"
awk '{print $1}' apache_log | sort | uniq -u
#script to print unique IP Addresses
