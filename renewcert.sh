#!/bin/ksh
#
# Title:         create new self-signed certificate
# Author:        Bryanster
# Version:       1.0
#
# to create a new self-signed certificate and replace existing 
#
commonname=project-wildcard.local
country=NL
state=Holland
locality=Holland
organization=Project-wildcard
organizationalunit=IT
email=certificate@project-wildcard.org

openssl req  -nodes -new -x509  -keyout ./certutil/server.key -out ./certutil/server.cert \
     -subj "/C=$country/ST=$state/L=$locality/O=$organization/OU=$organizationalunit/CN=$commonname/emailAddress=$email"
cp ./certutil/server.key /etc/project-wildcard/certificates/server.key
cp ./certutil/server.cert /etc/project-wildcard/certificates/server.cert