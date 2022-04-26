var db=require('./Database');

exports.auth = async (username, password, callback) => {
  let sql = `SELECT * FROM Account WHERE username = '${username}' AND password = '${password}'`;
  await db.query(sql, function(err, data) {
    callback(data);
  })
}

exports.getUserName = async (username) => {
  let sql = `SELECT username FROM Account WHERE username = '${username}'`;
  try {
    await db.query(sql, function(err, data) {
      return "a";
      return data;
    })
  } catch {
    return null;
  }
}

exports.getEmail = async (email) => {
  let sql = `SELECT email FROM Account WHERE email = '${email}'`;
  try {
    await db.query(sql, function(err, data) {
      return data;
    })
  } catch {
    return null;
  }
}

exports.createUser = async (username, password, email) => {
  let sql = `INSERT INTO Account(username, password, email) VALUES ('${username}', '${password}', '${email}');`;
	try {
		db.query(sql, function(err, data) {
      return data;
    })
	} catch {
		return null;
	}
};