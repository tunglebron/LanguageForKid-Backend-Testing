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

exports.getName = async (username, callback) => {
  let sql = `SELECT name FROM ACCOUNTS WHERE username = '${username}'`;
  try {
    await db.query(sql, function (err, data) {
      callback(data);
    })
  } catch {
    callback(null);
  }
}

exports.getPassword = async (username, callback) => {
  let sql = `SELECT password FROM ACCOUNTS WHERE username = '${username}'`;
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

exports.getUserInfo = async (username, callback) => {
  let sql = `SELECT name, learnProgress, testProgress FROM ACCOUNTS WHERE username = '${username}'`;
  try {
    await db.query(sql, function (err, data) {
      callback(data);
    })
  } catch {
    callback(null);
  }
}

exports.getLearnProgress = async (username, callback) => {
  let sql = `SELECT learnProgress FROM ACCOUNTS WHERE username = '${username}'`;
  try {
    await db.query(sql, function (err, data) {
      callback(data);
    })
  } catch {
    callback(null);
  }
}

exports.getTestProgress = async (username, callback) => {
  let sql = `SELECT testProgress FROM ACCOUNTS WHERE username = '${username}'`;
  try {
    await db.query(sql, function (err, data) {
      callback(data);
    })
  } catch {
    callback(null);
  }
}

exports.updateProgress = async (username, newLearnProgress, newTestProgress, callback) => {
  let sql = `UPDATE ACCOUNTS SET learnProgress = '${newLearnProgress}', testProgress = '${newTestProgress}' WHERE username = '${username}'`;
  try {
    await db.query(sql, function (err, data) {
      return true;
    })
  } catch {
    return false;
  }
}

exports.updateName = async (username, newName, callback) => {
  let sql = `UPDATE ACCOUNTS SET name = '${newName}' WHERE username = '${username}'`;
  try {
    await db.query(sql, function (err, data) {
      return true;
    })
  } catch {
    return false;
  }
}

exports.updatePassword = async (username, newPassword, callback) => {
  let sql = `UPDATE ACCOUNTS SET password = '${newPassword}' WHERE username = '${username}'`;
  try {
    await db.query(sql, function (err, data) {
      return true;
    })
  } catch {
    return false;
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