#!/bin/ksh
#
# Title:         update unbound blacklist
# Author:        Bryanster
# Version:       1.0
#
#update notrack list
cd /home/notrack
git pull

#update brienlist
cd /home/brienlist
git pull
#create ublacklist
rm /home/brienlist/ublacklist
touch /home/brienlist/ublacklist

file="/etc/brienlist/dblacklist"

while IFS= read -r line
do
    
    echo "local-zone: \"$line\" redirect" >> /home/brienlist/ublacklist
    echo "local-data: \"$line A 192.168.255.254\"" >> /home/brienlist/ublacklist

done <"$file"
rcctl restart unbound