const express = require('express')
const app = express()
var mysql = require('mysql');
const path = require('path');
const port = 3000
const file = "index.html";

var con = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "@27r0b0+=",
    database: "football"
});

con.connect(function (err) {
    if (err) throw err;
    console.log("Connected to MySQL!");


    app.get('/', (req, res) => {
        res.sendFile(path.join(__dirname, file), function (err){
            if (err) {
                 next(err);
            }
            else {
                console.log('Sent:', file);
            }
        })
    })

    con.end();
});
    app.listen(port, () => {
        console.log(`App listening on port ${port}`)
    })