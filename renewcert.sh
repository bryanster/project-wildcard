#!/bin/ksh
#
# Title:         create new self-signed certificate
# Author:        Bryanster
# Version:       1.0
#
# to create a new certificate and replace existing 
#
openssl req  -nodes -new -x509  -keyout ./certutil/server.key -out ./certutil/server.cert
cp ./certutil/server.key /etc/project-wildcard/certificates/server.key
cp ./certutil/server.cert /etc/project-wildcard/certificates/server.cert