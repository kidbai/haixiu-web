var express = require('express');
var path = require('path');
var ejs = require('ejs');
var mysql = require('mysql');
var conn = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: 'yang',
    database: 'node_crawler'
});

var postList = [];
conn.connect();
conn.query('select * from tbl_post limit 10', function (err, results){
    if(err){
        console.error(err);
    }
    results.map(function (item){
       var post = JSON.parse(item['info']);
       postList.push(post);

    });
});     

var app = express();

app.engine('.html', ejs.__express);
app.set('views', __dirname + '/views');
app.set('view engine', 'html');
app.use(express.static(__dirname + '/public'));

app.get('/', function (req, res){
    res.render('content',{
        postList : postList
    });
});

app.listen(3000, function(){
    console.log('listen 3000');
});