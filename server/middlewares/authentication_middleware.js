var modelUser = require("./../models/User");
var authMethod = require("../authentication/auth_methods");

exports.isAuth = async (req, res, next) => {

  const accessTokenFromHeader = req.headers.x_authorization;
  if (!accessTokenFromHeader) {
    return res.unauth({
      errors: {},
      code: 401,
      message: "Access denied",
      result: {},
    });
  }

  const accessTokenSecret = process.env.ACCESS_TOKEN_SECRET;

  const verified = await authMethod.verifyToken(
    accessTokenFromHeader,
    accessTokenSecret
  );
  if (!verified) {
    return res.unauth({
      errors: {},
      code: 401,
      message: "You have no right to access this",
      result: {},
    });
  } else {
    next();
    // modelUser.getUser(verified.payload.username, (result) => {
    //   req.user = result.recordset[0];
    // });
  }
};
