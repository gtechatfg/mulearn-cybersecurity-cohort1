#!/usr/bin/env bash
# Write a bash script to find and print out unique IP addresses
grep -E -o "[0-9]{1,3}.[0-9]{1,3}.[0-9]{1,3}.[0-9]{1,3}" access.log | sort | uniq
