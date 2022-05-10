var db = require('./Database');

exports.auth = async (username, password, callback) => {
  let sql = `SELECT * FROM ACCOUNTS WHERE username = '${username}' AND password = '${password}'`;
  await db.query(sql, function (err, data) {
    callback(data);
  })
}

exports.getUser = async (username, callback) => {
  let sql = `SELECT TOP 1 * FROM ACCOUNTS WHERE username = '${username}'`;
  try {
    await db.query(sql, function (err, data) {
      callback(data);
    })
  } catch (error) {
    callback(null);
  }
}

exports.getUserName = async (username, callback) => {
  let sql = `SELECT username FROM ACCOUNTS WHERE username = '${username}'`;
  try {
    await db.query(sql, function (err, data) {
      callback(data);
    })
  } catch {
    callback(null);
  }
}

exports.getPassword = async (password, callback) => {
  let sql = `SELECT password FROM ACCOUNTS WHERE username = '${password}'`;
  try {
    await db.query(sql, function (err, data) {
      callback(data);
    })
  } catch {
    callback(null);
  }
}

exports.getEmail = async (email, callback) => {
  let sql = `SELECT email FROM ACCOUNTS WHERE email = '${email}'`;
  try {
    await db.query(sql, function (err, data) {
      callback(data);
    })
  } catch {
    callback(null);
  }
}

exports.getName = async (name, callback) => {
  let sql = `SELECT name FROM ACCOUNTS WHERE username = '${name}'`;
  try {
    await db.query(sql, function (err, data) {
      callback(data);
    })
  } catch {
    callback(null);
  }
}

exports.getRefreshToken = async (username, callback) => {
  let sql = `SELECT TOP 1 refreshToken FROM ACCOUNTS WHERE username = '${username}' and refreshToken is not NULL`;
  try {
    await db.query(sql, function (err, data) {
      callback(data);
    })
  } catch {
    callback(null);
  }
}

exports.createUser = async (username, password, email, name) => {
  let sql = `INSERT INTO ACCOUNTS(username, password, email, name, learnProgress, testProgress) VALUES ('${username}', '${password}', '${email}', '${name}', '${1}', '${0}');`;
  try {
    db.query(sql, function (err, data) {
      return data;
    })
  } catch {
    return null;
  }
};

exports.updateRefreshToken = async (username, refreshToken) => {
  let sql = `UPDATE ACCOUNTS SET refreshToken = '${refreshToken}' WHERE username = '${username}'`;
  try {
    db.query(sql, function (err, data) {
      return true;
    })
  } catch (error) {
    return false;
  }
};