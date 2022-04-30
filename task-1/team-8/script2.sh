#!/usr/bin/env bash
#Script to show list of unique IP addresses from log file
grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" access.log |sort -u
