#!/usr/bin/env bash

read -p "Enter the ip to look up : "  ip
cat "../access.log" | grep $ip
