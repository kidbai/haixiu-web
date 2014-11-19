var express = require('express');
var path = require('path');
var ejs = require('ejs');
var mysql = require('mysql');


var db_config = ({
    connectionLimit: 10,
    host: 'us-cdbr-iron-east-01.cleardb.net',
    user: 'b875511a83fee8',
    password: '4428b7df',
    database: 'heroku_28ce897a21c469d'
});

var pool = mysql.createPool(db_config);

// var conn;

// function handleDisconnect(){
//     conn = mysql.createConnection(db_config);

//     conn.connect(function (err){
//         if(err){
//             console.log('error when connecting to db:', err);
//             setTimeout(handleDisconnect, 2000);
//         }
//     });

//     conn.on('error', function (err){
//         console.log('db error', err);
//         if(err.code === 'PROTOCOL_CONNECTION_LOST'){
//             handleDisconnect();
//         }
//         else{
//             throw err;
//         }
//     });
// }



var app = express();

app.engine('.html', ejs.__express);
app.set('port', (process.env.PORT || 5000));
app.set('views', __dirname + '/views');
app.set('view engine', 'html');
app.use(express.static(__dirname + '/public'));

app.get('/', function (req, res){
    res.render('content'); 
    
});

app.get('/init', function (req, res){
    var firstPage = req.query.firstPage;
    console.log(firstPage);
    if(firstPage != 1)
    {
        return false;
    }
    var sql = 'select * from tbl_post limit 15 ';
    pool.getConnection(function (err, conn){
        conn.query(sql, function (err, results){
            if(err){
                console.error(err);
            }
            console.log(results);
            var postList = [];
            results.forEach(function (item){
                postList.push(item);
            });
            res.render('post_template', { postList : postList }, function (err, html){
                if(err){
                    console.error(err);
                }
                res.send(html);
            });
            conn.release();
        }); 
    });
    
    
    
});

app.get('/load-post', function (req, res){
    var page = req.query.page;
    if(page < 1 || isNaN(page)){
        page = 1;
    }
    console.log(page);
    var pageSize = 10;
    var n = (page - 1) * 10;
    var sql = "select * from tbl_post limit " + n + "," + pageSize; //改成你那边的数据库表名
    conn.query(sql, function (err, results){
        if(err){
            console.error(err);
            return err;
        }
        console.log(results);
        var postList = [];
        results.forEach(function (item){
           postList.push(item);
        });
        // console.log(postList);
        res.render('post_template', { postList: postList }, function (err, html){
            res.send(html);
        });
    });
});

var port = process.env.PORT || 3000;
app.listen(port, function() {
  console.log("Node app is running at localhost:" + port);
});