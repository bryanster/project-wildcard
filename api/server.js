#!/usr/local/bin/node
//  Title:        Express backend 
//  Author:        Bryan van der Net
//  Version:       1.0
// 
const configfile = require('/etc/project-wildcard/mapi.json');
const express = require('express');
const fs = require('fs');
const https = require('https');
var os = require("os");
const app = express()
async function main() {
    var port = configfile.port
    const key = fs.readFileSync('/etc/project-wildcard/certificates/server.key');
    const cert = fs.readFileSync('/etc/project-wildcard/certificates/server.cert');

    app.get("/", async (req, res) => {
        res.send(``);
    })

    app.post("/login", async (req, res) => {
        res.send(``);
    })
    app.get("/INterfaces", async (req, res) => {
        res.send(``);
    })
    const server = https.createServer({key: key, cert: cert }, app);
    server.listen(port, () => { 
        console.log(`mapi listening at http://localhost:${port}`) 
    });
}

main();