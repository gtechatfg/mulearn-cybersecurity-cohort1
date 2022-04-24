#!/usr/bin/env bash
echo "Enter the IP whose request details are required"
read ip
grep $ip access.log
