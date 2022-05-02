const express = require('express')
const app = express()
const path = require('path');
const port = 3000
const file = "index.html";

var bodyParser = require('body-parser')
var mysql = require('mysql');
var urlencodedParser = bodyParser.urlencoded({ extended: true })

var con = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "@27r0b0+=",
    database: "football",
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

    app.post('/analyze', urlencodedParser, (req, res) => {
        var sql = `call grab_stats("${req.body.player1}")`;
        var sql2 = `call grab_stats("${req.body.player2}")`;
        console.log(sql);
        console.log(sql2);

        con.query(sql, function (err, result) {
            if (err) throw err;
            console.log("Result(s) from query: ")
            console.log(result[0]);
            res.write(result[0].toString());
            //con.end();
        });
       

        con.query(sql2, function (err, result) {
            if (err) throw err;
            console.log("Result(s) from query: ")
            console.log(result[0]);
            res.write(result[0].toString());
            //con.end();
        });
        res.send();
        con.end();
    })
});

    app.listen(port, () => {
        console.log(`App listening on port ${port}`)
    })