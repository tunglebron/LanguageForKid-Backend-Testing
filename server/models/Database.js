var mssql = require("mssql");

var config = {
  "user": "sa",
  "password": "12345678",
  "server": "localhost",
  "database": "LanguageForKid",
  "options": {
    trustedConnection: true,
    encrypt: true,
    enableArithAbort: true,
    trustServerCertificate: true,
  },
}

var db = mssql.connect(config, function(err) {
  if (err) console.log(err);
  console.log('Da ket noi database');
});
module.exports = db;
