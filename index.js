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
conn.query('select * from tbl_post limit 15', function (err, results){
    if(err){
        console.error(err);
        return;
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
    res.render('index',{
        postList : postList
    });
});
app.get('/update', function (req, res){
    var postList = [];
    var page = req.query.page;
    if(page < 1 || isNaN(page)){
        page = 1;
    }
    var pageSize = 15;
    var n = (page - 1) * 15;
    var sql = "select * from info limit " + n + "," + pageSize;
    conn.query(sql, function (err, results){
    if(err){
        console.error(err);
        return err;
    }
    results.forEach(function (item){
       var post = JSON.parse(item['info']);
       postList.push(post);
    });
    res.render('content', {postList: postList}, function (err, html){
        res.send(html);
    });
  });
});

app.listen(3000, function(){
    console.log('listen 3000');
});