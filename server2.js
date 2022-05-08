const express = require('express')
const app = express()
const path = require('path');
const port = 3000
const file = "index.html";

var bodyParser = require('body-parser')
var mysql = require('mysql');
var urlencodedParser = bodyParser.urlencoded({ extended: true })

//var con = mysql.createConnection({
//    host: "localhost",
//    user: "root",
//    password: "@27r0b0+=",
//    database: "football",
//    multipleStatements: true
//});

var con = mysql.createConnection({
    host: "fantasy-football.cejgj6f569iv.us-east-1.rds.amazonaws.com",
    user: "admin",
    password: "password",
    database: "fantasy_football",
    multipleStatements: true
});

con.connect(function (err) {
    if (err) throw err;
    console.log("Connected to MySQL!");


    app.get('/', (req, res) => {
        res.sendFile(path.join(__dirname, file), function (err) {
            if (err) {
                next(err);
            }
            else {
                console.log('Sent:', file);
            }
        })
    })

    app.get('/healthcheck', (req, res) => {
            if (err) {
                next(err);
            }
            else {
                res.send("healthy")
            }
    })

    app.post('/analyze', urlencodedParser, (req, res) => {
        var sql = `call get_stats("${req.body.player1}");`;
        var sql2 = `call get_stats("${req.body.player2}")`;
        var multiplesql = sql + sql2;
        console.log(sql);
        console.log(sql2);
        console.log(multiplesql);
        con.query(multiplesql, function (err, result) {
            if (err) throw err;
            console.log("Result(s) from query: ");
            console.log(result);
            //const obj = JSON.parse(result[0]);
            //console.log(obj.name);
            //console.log(result);
            //res.write(result[0].toString());
            res.send(result);
            con.end();
        });

    })
});

    app.listen(port, () => {
        console.log(`App listening on port ${port}`)
    })