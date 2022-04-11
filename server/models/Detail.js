var db=require('./Database');

exports.allItemsById = (id, callback) => {
  let sql = "SELECT * FROM DETAIL WHERE id_big = ";
  sql = sql + id;
  db.query(sql, function(err, d) {
    if (err) console.log(err);

    callback(d);
  })
}

exports.allItems = (callback) => {
  let sql = "SELECT * FROM DETAIL";
  db.query(sql, function(err, d) {
    if (err) console.log(err);

    callback(d);
  })
}

exports.randomItems = (callback) => {
  let sql = "SELECT TOP 40 * FROM DETAIL ORDER BY newid()";

  db.query(sql, function(err, d) {
    if (err) console.log(err);

    callback(d);
  })
}

