var db=require('./Database');

exports.list = function(callback) {
  let sql = `SELECT * FROM BIGLIST`;
  db.query(sql, function(err, d) {
    if (err) console.log(err);
    callback(d);
  })
}