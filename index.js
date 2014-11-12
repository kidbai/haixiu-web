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
    res.render('content',{
        postList : postList
    }); 
});

app.get('/init', function (req, res){
    var postList = [];
    var firstPage = req.query.firstPage;
    console.log(firstPage);
    var pageSize = 15;
    if(firstPage != 1)
    {
        return false;
    }
    var sql = 'select * from tbl_post limit 15 ';
    conn.query(sql, function (err, results){
        if(err){
            console.error(err);
        }
        console.log(results);
        results.forEach(function (item){
            var post = JSON.parse(item['info']);
            postList.push(post);
        });
        // console.log(postList);
        res.render('post_template', { postList : postList }, function (err, html){
            if(err){
                console.error(err);
            }
            res.send(html);
        });
    }); 
    
    
});

app.get('/update', function (req, res){
    var postList = [];
    var page = req.query.page;
    if(page < 1 || isNaN(page)){
        page = 1;
    }
    console.log(page);
    var pageSize = 15;
    var n = (page - 1) * 15;
    var sql = "select * from tbl_post limit " + n + "," + pageSize; //改成你那边的数据库表名
    conn.query(sql, function (err, results){
        if(err){
            console.error(err);
            return err;
        }
        results.forEach(function (item){
           var post = JSON.parse(item['info']);
           postList.push(post);
        });
        console.log(postList);
        res.render('post_template', { postList: postList }, function (err, html){
            res.send(html);
        });
    });
});

app.listen(3000, function(){
    console.log('listen 3000');
});