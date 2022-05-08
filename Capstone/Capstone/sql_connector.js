var mysql = require('mysql');

var con = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "@27r0b0+=",
    database:"football"
});

let sql = 'call grab_stats("Brady, Tom")';
//let sql = 'select * from ((player inner join player_stats on player.identNum = player_stats.identNum) inner join qb_stats on player.identNum = qb_stats.identNum)'

con.connect(function (err) {
    if (err) throw err;
    console.log("Connected to MySQL!");
    con.query(sql, function (err, result) {
        if (err) throw err;
        console.log("Result(s) from query: ")
        console.log(result);
    });
    con.end();
});
