#!/bin/ksh
#
# Title:         update unbound blacklist
# Author:        Bryanster
# Version:       1.0
#
cd /etc/brienlist
git pull
#create ublacklist
rm /etc/brienlist/ublacklist
touch /etc/brienlist/ublacklist

file="/etc/brienlist/dblacklist"

while IFS= read -r line
do
    echo "local-data: $line A 192.168.255.254" >> /etc/brienlist/ublacklist
done <"$file"