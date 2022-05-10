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

var proceessRefreshToken = async (req, res, next) => {
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
                accessToken
              },
              code: 200,
              message: "success",
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
  proceessRefreshToken,
  afterAuth,
  refreshToken,
};
