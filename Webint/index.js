
//  Title:         webinterface
//  Author:        bryanster
//  Version:       1.0

const express = require('express');
var os = require("os");
const app = express()
async function main() {
    var port = 4000
    var hostname = os.hostname();
    app.get("/", async (req, res) => {
        res.send(`this is server: ${hostname} `);
    })
    app.listen(port, () => {
        console.log(`Brynet listening at http://localhost:${port}`)
    })
}

main();