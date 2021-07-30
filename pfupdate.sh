#!/bin/ksh
#
# Title:         update pfrules 
# Author:        Bryanster
# Version:       1.0
#
cd /root/project-wildcard
git pull 
cp ./config/pf.conf /etc/pf.conf
pfctl -f /etc/pf.conf
