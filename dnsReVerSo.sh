#!/bin/bash
echo "============================DnS Reverse============================"
for ip in $(seq $2 $3);do host -t ptr  $1$ip;done | grep -v $1 | cut -d "" -f 5 

