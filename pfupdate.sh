#!/bin/ksh
#
# Title:         update pfrules 
# Author:        Bryanster
# Version:       1.0
#
#pull latest pfrules from github then test and apply them
#
cd /root/project-wildcard
git pull 
cp ./config/pf.conf /etc/pf.conf
pfctl -nvf /etc/pf.conf
