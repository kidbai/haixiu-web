var mysql = require('mysql');

var connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: 'li',
    database: 'node_crawler'
});

var Post = function (info) {
  this.info = info;
};

exports.newAndSave = function (info) {
  info = JSON.stringify(info);
  connection.query('insert into info SET info = ?', info, function (err, results){

    if (err) throw err;
    console.log('success');
  });
};
/**
* 根据Info ID获取信息
*/
exports.getAllPost = function (callback) {
  connection.query( "SELECT * FROM info",function (err, results){
    if (err) throw err;
    //console.log('results=', results);
  });
};