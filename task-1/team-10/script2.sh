#!/bin/bash
cd ~
grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" $(find -name access.log) | sort --unique

# bash script to find and print out unique IP addresses