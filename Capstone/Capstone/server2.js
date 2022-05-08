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
        var sql2 = `call get_stats("${req.body.player2}");`;
        var sql3 = `call get_stats("${req.body.player3}");`;
        var sql4 = `call get_stats("${req.body.player4}");`;

        console.log("Player 1 ", req.body.player1 );
        console.log("Player 2 ", req.body.player2 );
        console.log("Player 3 ", req.body.player3 );
        console.log("Player 4 ", req.body.player4 );

        console.log(sql, sql2, sql3, sql4);

        var multiplesql = sql + sql2 + sql3 + sql4;
        console.log(sql);
        console.log(sql2);
        console.log(multiplesql);
        con.query(multiplesql, function (err, result) {
            json_result = JSON.stringify(result);
            if (err) throw err;
            console.log("Result(s) from query: ");
            console.log(json_result);
            var player_return = "";
            var player_rank = "10000";
            let player_count = 2;
            var players = [];
            var playernames = [];

            //res.send(result[0][0]["player_rank"]);
            var player1 = result[0][0]["player_rank"];
            console.log("adding player 1 to array ");
            players.push(player1);
            console.log(players);
            playernames.push(result[0][0]["name"]);
            var player2 = result[2][0]["player_rank"];
            players.push(player2);
            playernames.push(result[2][0]["name"]);
            console.log(players);
            try {
                var player3 = result[4][0]["player_rank"];
                players.push(player3);
                console.log(players);
                playernames.push(result[4][0]["name"]);
                var player3_name = result[4][0]["name"];
                player_count++;
            }
            catch {
                console.log("no player 3");
                player3 = 10001;
            }
            try {
                var player4 = result[6][0]["player_rank"];
                players.push(player4);
                console.log(players);
                playernames.push(result[6][0]["name"]);
                var player4_name = result[6][0]["name"];
                player_count++;
            }
            catch {
                console.log("no player 4");
                player4 = 10002;
            }

            console.log(player_count);
            //var player1_name = result[0][0]["name"];
            //var player2_name = result[2][0]["name"];
            //var player3_name = result[4][0]["name"];
            //var player4_name = result[6][0]["name"];

            //console.log("player 1: ", JSON.stringify(player1));
            //res.send(player1.toString());
           
            for (let i = 0; i < player_count; i++) {
                //console.log(result[i][0]["player_rank"]);
                //console.log(result[i][0]["name"]);
                if (players[i] < player_rank) {
                    player_rank = players[i];
                    player_return = playernames[i];
                }
            }
            console.log(player_return);
            res.send(
                '<!DOCTYPE html>' +
                '<html>'+
               ' <head>'+
                   ' <!-- meta data showing information of website -->'+
                    '<meta charset="UTF-8">'+
                       ' <meta name="description" content="Fantasy football start or sit analyzer">'+
                           ' <!-- title for webpage -->'+
                           ' <title>Fantasy Start/Sit</title>'+
                '</head>'+
                       ' <!-- start of navigation menu on top of screen, with possibility to also have webpage that shows database -->'+
                       ' <body style="background-color: lightgreen;">'+
                           ' <main>' +

                                '<br /><br />'+
                                '<h1>CSUCI Spring 2022</h1>'+
                                ' <hr />' +
                                 '<h3>' + "The Player to put into your lineup is: " +
                                player_return +
                                 '</h3>' +
                               '<form action="/" method="get">'+
                                    '<input type = "submit" value = "GO BACK" />'+
                                '</form>'+

                            '</main>'+
                            '<footer>'+
                                '<b>CSUCI COMP 499</b>'+
                            '</footer>'+
                        '</body > '+
                '</html>'
            );
            con.end();
        });

    })
});

    app.listen(port, () => {
        console.log(`App listening on port ${port}`)
    })