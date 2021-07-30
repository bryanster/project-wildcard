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
for p in (dblacklist)
do
    echo "local-data: ${p} A 192.168.255.254" >> /etc/brienlist/ublacklist
done

