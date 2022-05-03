var db=require('./Database');

exports.auth = async (username, password, callback) => {
  let sql = `SELECT * FROM Account WHERE username = '${username}' AND password = '${password}'`;
  await db.query(sql, function(err, data) {
    callback(data);
  })
}

exports.getUser = async (username, callback) => {
  let sql = `SELECT TOP 1 * FROM Account WHERE username = '${username}'`;
  try {
    await db.query(sql, function(err, data) {
      callback(data);
    })
  } catch (error) {
    callback(null);
  }
}

exports.getUserName = async (username, callback) => {
  let sql = `SELECT username FROM Account WHERE username = '${username}'`;
  try {
    await db.query(sql, function(err, data) {
      callback(data);
    })
  } catch {
    callback(null);
  }
}

exports.getPassword = async (username, callback) => {
  let sql = `SELECT password FROM Account WHERE username = '${username}'`;
  try {
    await db.query(sql, function(err, data) {
      callback(data);
    })
  } catch {
    callback(null);
  }
}

exports.getEmail = async (email, callback) => {
  let sql = `SELECT email FROM Account WHERE email = '${email}'`;
  try {
    await db.query(sql, function(err, data) {
      callback(data);
    })
  } catch {
    callback(null);
  }
}

exports.getRefreshToken = async (username, callback) => {
  let sql = `SELECT TOP 1 refreshToken FROM Account WHERE username = '${username}' and refreshToken is not NULL`;
  try {
    await db.query(sql, function(err, data) {
      callback(data);
    })
  } catch {
    callback(null);
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

exports.updateRefreshToken = async (username, refreshToken) => {
	let sql = `UPDATE Account SET refreshToken = '${refreshToken}' WHERE username = '${username}'`;
  try {
    db.query(sql, function(err, data) {
      return true;
    })
  } catch (error) {
    return false;
  }
};