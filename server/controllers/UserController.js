var modelUser = require("./../models/User");
var authMethod = require("../authentication/auth_methods");
var bcrypt = require("bcrypt");
var randToken = require("rand-token");
const SALT_ROUNDS = 10;

var register = async (req, res, next) => {
  let username = req.body.username.toLowerCase();
  let password = req.body.password;
  let email = req.body.email.toLowerCase();
  let name = req.body.name;

  const hashPassword = bcrypt.hashSync(password, SALT_ROUNDS);
  if (modelUser.createUser(username, hashPassword, email, name) == null) {
    var error = new Error("Error occurs when saving user account");
    next(error);
  } else {
    res.success({
      result: {},
      code: 200,
      message: "Save user successfully",
    });
  }
};

var registerCheckDuplicateUserName = (req, res, next) => {
  if (req.body.username != undefined && req.body.username != null) {
    modelUser.getUserName(req.body.username.toLowerCase(), function (result) {
      if (result.rowsAffected != 0) {
        res.error({
          errors: {},
          code: 400,
          message: "User name existed",
          result: {},
        });
      } else {
        next();
      }
    });
  } else {
    res.error({
      errors: {},
      code: 400,
      message: "No User name provided",
      result: {},
    });
  }
};

var registerCheckDuplicateEmail = (req, res, next) => {
  if (req.body.email != undefined && req.body.email != null) {
    modelUser.getEmail(req.body.email.toLowerCase(), function (result) {
      if (result.rowsAffected != 0) {
        res.error({
          errors: {},
          code: 400,
          message: "Email existed",
          result: {},
        });
      } else {
        next();
      }
    });
  } else {
    res.error({
      errors: {},
      code: 400,
      message: "No Email provided",
      result: {},
    });
  }
};

var auth = async (req, res, next) => {
  if (req.body.username != undefined && req.body.password != undefined) {
    const username = req.body.username.toLowerCase();
    const password = req.body.password;

    try {
      modelUser.getPassword(username, (result) => {
        if (result.rowsAffected == 0) {
          res.unauth({
            errors: {},
            code: 401,
            message: "User name or password is not correct",
            result: {},
          });
        } else {
          var userPassword = result.recordset[0].password;
          const isPasswordValid = bcrypt.compareSync(password, userPassword);
          if (!isPasswordValid) {
            res.unauth({
              errors: {},
              code: 401,
              message: "User name or password is not correct",
              result: {},
            });
          } else {
            next();
          }
        }
      });
    } catch (error) {
      next(error);
    }
  } else {
    res.error({
      errors: {},
      code: 400,
      message: "No username and/or no password provided",
      result: {},
    });
  }
};

var processAccessToken = async (req, res, next) => {
  const accessTokenLife = process.env.ACCESS_TOKEN_LIFE;
  const accessTokenSecret = process.env.ACCESS_TOKEN_SECRET;

  const dataForAccessToken = {
    username: req.body.username.toLowerCase(),
  };

  const accessToken = await authMethod.generateToken(
    dataForAccessToken,
    accessTokenSecret,
    accessTokenLife
  );

  if (!accessToken) {
    res.unauth({
      errors: {},
      code: 401,
      message: "Login Unsuccessful",
      result: {},
    });
  } else {
    req.body.accessToken = accessToken;
    next();
  }
};

var processRefreshToken = async (req, res, next) => {
  let refreshToken = randToken.generate(64);
  let username = req.body.username.toLowerCase();
  modelUser.getRefreshToken(username, (result) => {
    if (result.rowsAffected != 1) {
      req.body.refreshToken = refreshToken;
      modelUser.updateRefreshToken(username, refreshToken);
      next();
    } else {
      refreshToken = result.recordset[0].refreshToken;
      req.body.refreshToken = refreshToken;
      next();
    }
  });
};

var afterAuth = (req, res, next) => {
  res.success({
    result: {
      username: req.body.username.toLowerCase(),
      accessToken: req.body.accessToken,
      refreshToken: req.body.refreshToken,
    },
    code: 200,
    message: "Login successfully",
  });
};

var refreshToken = async (req, res, next) => {
  const accessTokenFromHeader = req.headers.x_authorization;
  if (!accessTokenFromHeader) {
    return res.error({
      errors: {},
      code: 400,
      message: "No access token provided from header",
      result: {},
    });
  }

  const refreshTokenFromBody = req.body.refreshToken;
  if (!refreshTokenFromBody) {
    return res.error({
      errors: {},
      code: 400,
      message: "No refresh token provided from body",
      result: {},
    });
  }

  const accessTokenSecret = process.env.ACCESS_TOKEN_SECRET;
  const accessTokenLife = process.env.ACCESS_TOKEN_LIFE;

  // Decode access token
  const decoded = await authMethod.decodeToken(
    accessTokenFromHeader,
    accessTokenSecret
  );

  if (!decoded) {
    return res.error({
      errors: {},
      code: 400,
      message: "Access token is invalid",
      result: {},
    });
  }

  // Get user name from payload
  const username = decoded.payload.username;

  await modelUser.getUser(username, async (result) => {
    var user = result.recordset[0];
    if (result.rowsAffected != 1) {
      return res.unauth({
        errors: {},
        code: 401,
        message: "User is not existed",
        result: {},
      });
    } else {
      if (refreshTokenFromBody !== user.refreshToken) {
        return res.error({
          errors: {},
          code: 400,
          message: "Refresh token is invalid",
          result: {},
        });
      } else {
        // Create new access token
        const dataForAccessToken = {
          username,
        };

        const accessToken = await authMethod.generateToken(
          dataForAccessToken,
          accessTokenSecret,
          accessTokenLife
        );
        if (!accessToken) {
          return res.error({
            errors: {},
            code: 400,
            message: "Create access token failed",
            result: {},
          });
        } else {
          return res.success({
            result: {
              accessToken,
            },
            code: 200,
            message: "success",
          });
        }
      }
    }
  });
};

var getUserInfoCheckParam = (req, res, next) => {
  let username = req.query.username;

  if (username == undefined || username == null) {
    res.error({
      errors: {},
      code: 400,
      message: "No username provided",
      result: {},
    });
  } else {
    next();
  }
};

var getUserInfo = (req, res, next) => {
  let username = req.query.username;

  if (username != "") {
    modelUser.getUserInfo(username, function (result) {
      if (result.recordset.length > 0) {
        res.success({
          result: {
            data: result.recordset,
          },
          code: 200,
          message: "",
        });
      } else {
        res.error({
          errors: {},
          code: 400,
          message: "Username not found",
          result: {},
        });
      }
    });
  } else {
    next();
  }
};

var getUserInfoInvalidUsername = (req, res, next) => {
  res.error({
    errors: {},
    code: 400,
    message: "Invalid username",
    result: {},
  });
};

var updateProgressCheckParam = async (req, res, next) => {
  let username = req.query.username;
  let learned = req.query.learned;

  if (
    username == undefined ||
    username == null ||
    learned == undefined ||
    learned == null
  ) {
    res.error({
      errors: {},
      code: 400,
      message: "No username or learned provided",
      result: {},
    });
  } else {
    next();
  }
};

var updateProgress = async (req, res, next) => {
  let username = req.query.username;
  let learned = req.query.learned;

  modelUser.getLearnProgress(username, function (result) {
    if (result.rowsAffected == 0) {
      res.error({
        errors: {},
        code: 400,
        message: "The provided username could not be found",
        result: {},
      });
    } else {
      const currentLearnProgress = result.recordset[0].learnProgress;

      if (currentLearnProgress == learned) {
        const newLearnProgress = currentLearnProgress + 1;
        const newTestProgress = learned;

        if (
          modelUser.updateProgress(
            username,
            newLearnProgress,
            newTestProgress
          ) == null
        ) {
          var error = new Error("Error occurs when update learn progress");
          next(error);
        } else {
          res.success({
            result: {},
            code: 200,
            message: "Update learn progress successfully",
          });
        }
      } else if (currentLearnProgress > learned) {
        res.success({
          result: {},
          code: 200,
          message: "Update learn progress successfully",
        });
      } else if (currentLearnProgress < learned) {
        res.success({
          result: {},
          code: 400,
          message: "Invalid learned provided",
        });
      }
    }
  });
};

var checkExpiredToken = async (req, res, next) => {
  const accessTokenFromHeader = req.headers.x_authorization;
  const accessTokenSecret = process.env.ACCESS_TOKEN_SECRET;

  if (!accessTokenFromHeader) {
    return res.unauth({
      errors: {},
      code: 401,
      message: "Access denied",
      result: {},
    });
  } else {
    authMethod.verifyTokenForChecking(
      accessTokenFromHeader,
      accessTokenSecret,
      function (result, data) {
        return res.success({
          result: {
            data,
            validAccessToken: result,
          },
          code: 200,
          message: "success",
        });
      }
    );
  }
};

var getUserInfoCheckParam = (req, res, next) => {
  let username = req.query.username;

  if (username == undefined || username == null) {
    res.error({
      errors: {},
      code: 400,
      message: "No username provided",
      result: {},
    });
  } else {
    next();
  }
};

var getUserInfo = (req, res, next) => {
  let username = req.query.username;

  if (username != "") {
    modelUser.getUserInfo(username, function (result) {
      if (result.recordset.length > 0) {
        res.success({
          result: {
            data: result.recordset,
          },
          code: 200,
          message: "",
        });
      } else {
        res.error({
          errors: {},
          code: 400,
          message: "Username not found",
          result: {},
        });
      }
    });
  } else {
    next();
  }
};

var getUserInfoInvalidUsername = (req, res, next) => {
  res.error({
    errors: {},
    code: 400,
    message: "Invalid username",
    result: {},
  });
}

var updateProgressCheckParam = async (req, res, next) => {
  let username = req.query.username;
  let learned = req.query.learned;

  if (username == undefined || username == null || learned == undefined || learned == null) {
    res.error({
      errors: {},
      code: 400,
      message: "No username or learned provided",
      result: {},
    });
  } else {
    next();
  }
};

var updateProgress = async (req, res, next) => {
  let username = req.query.username;
  let learned = req.query.learned;

  modelUser.getLearnProgress(username, function (result) {
    if (result.rowsAffected == 0) {
      res.error({
        errors: {},
        code: 400,
        message: "The provided username could not be found",
        result: {},
      });
    } else {
      const currentLearnProgress = result.recordset[0].learnProgress

      if (currentLearnProgress == learned) {
        const newLearnProgress = currentLearnProgress + 1
        const newTestProgress = learned

        if (modelUser.updateProgress(username, newLearnProgress, newTestProgress) == null) {
          var error = new Error("Error occurs when update learn progress");
          next(error);
        } else {
          res.success({
            result: {},
            code: 200,
            message: "Update learn progress successfully",
          });
        }
      } else if (currentLearnProgress > learned) {
        res.success({
          result: {},
          code: 200,
          message: "Update learn progress successfully",
        });
      } else if (currentLearnProgress < learned) {
        res.success({
          result: {},
          code: 400,
          message: "Invalid learned provided",
        });
      }

    }
  });
};

var updateNameCheckParam = async (req, res, next) => {
  let username = req.query?.username;
  let newName = req.query?.newName;

  if (username == undefined || username == null || newName == undefined || newName == null) {
    res.error({
      errors: {},
      code: 400,
      message: "No username or name provided",
      result: {},
    });
  } else {
    next();
  }
};

var updateName = async (req, res, next) => {
  let username = req.query?.username;
  let newName = req.query?.newName;

  modelUser.getName(username, function (result) {
    if (result.rowsAffected == 0) {
      res.error({
        errors: {},
        code: 400,
        message: "The provided username could not be found",
        result: {},
      });
    } else {
      if (modelUser.updateName(username, newName) == null) {
        var error = new Error("Error occurs when update learn progress");
        next(error);
      } else {
        res.success({
          result: {},
          code: 200,
          message: "Update learn progress successfully",
        });
      }
    }
  });
};

var updatePasswordCheckParam = async (req, res, next) => {
  const username = req.body?.username.toLowerCase();
  const curPassword = req.body?.curPassword;
  const newPassword = req.body?.newPassword;

  if (username == undefined || username == null) {
    res.error({
      errors: {},
      code: 400,
      message: "No username provided",
      result: {},
    });
  } else if (curPassword == undefined || curPassword == null || newPassword == undefined || newPassword == null) {
    res.error({
      errors: {},
      code: 400,
      message: "No current password or new password provided",
      result: {},
    });
  }
  else {
    next();
  }
};

var updatePassword = async (req, res, next) => {
  const username = req.body?.username.toLowerCase();
  const curPassword = req.body?.curPassword;
  const newPassword = req.body?.newPassword;

  modelUser.getPassword(username, function (result) {
    if (result.rowsAffected == 0) {
      res.error({
        errors: {},
        code: 400,
        message: "The provided username could not be found",
        result: {},
      });
    } else {
      var userPassword = result.recordset[0].password;
      const isPasswordCorrect = bcrypt.compareSync(curPassword, userPassword);
      if (!isPasswordCorrect) {
        res.error({
          errors: {},
          code: 401,
          message: "Current password provided is incorrect",
          result: {},
        });
      } else {
        const hashPassword = bcrypt.hashSync(newPassword, SALT_ROUNDS);
        if (modelUser.updatePassword(username, hashPassword ) == null) {
          res.error({
            result: {},
            code: 500,
            message: "Error occurs when saving user password",
          });
        } else {
          res.success({
            result: {},
            code: 200,
            message: "Change user password successfully",
          });
        }
      }
    }
  });
};

module.exports = {
  register,
  registerCheckDuplicateEmail,
  registerCheckDuplicateUserName,
  auth,
  processAccessToken,
  processRefreshToken,
  afterAuth,
  refreshToken,
  getUserInfoCheckParam,
  getUserInfo,
  getUserInfoInvalidUsername,
  updateProgressCheckParam,
  updateProgress,
  updateNameCheckParam,
  updateName,
  updatePasswordCheckParam,
  updatePassword,
  checkExpiredToken,
};
