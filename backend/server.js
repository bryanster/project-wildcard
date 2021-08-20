#!/usr/local/bin/node
//  Title:        Express backend 
//  Author:        Bryan van der Net
//  Version:       1.0
const configfile = require('/etc/project-wildcard/mapi.json')
const express = require('express');
var os = require("os");
const app = express()
async function main() {
    var port = configfile.port
    app.get("/", async (req, res) => {
        res.send(``);
    })

    app.post("/login", async (req, res) => {
        res.send(``);
    })
    app.listen(port, () => {
        console.log(`Brynet listening at http://localhost:${port}`)
    })
}

main();