#!/bin/ksh
#
# Title:         create new self-signed certificate
# Author:        Bryanster
# Version:       1.0
#
# to create a new certificate and replace existing 
#
openssl req -x509 -newkey rsa:2048 -keyout ./certutil/keytmp.pem -out ./certutil/cert.pem -days 365
openssl rsa -in ./certutil/keytmp.pem -out ./certutil/key.pem
cp ./certutil/key.pem /etc/project-wildcar/certificates/key.pem
cp ./certutil/cert.pem /etc/project-wildcar/certificates/cert.pem