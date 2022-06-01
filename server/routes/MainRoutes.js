var bigListController = require("../controllers/BigListController");
var detailController = require("../controllers/DetailController");
var userController = require("../controllers/UserController");
var authenticationMiddleware = require("../middlewares/authentication_middleware");

var express = require("express");
var router = express.Router();

router.post("/user/checkExpiredToken", userController.checkExpiredToken);

router.post(
  "/user/register",
  userController.registerCheckDuplicateUserName,
  userController.registerCheckDuplicateEmail,
  userController.register
);

router.post(
  "/user/login",
  userController.auth,
  userController.processAccessToken,
  userController.processRefreshToken,
  userController.afterAuth
);

router.post("/user/refresh", userController.refreshToken);

router.get(
  "/user/info",
  authenticationMiddleware.isAuth,
  userController.getUserInfoCheckParam,
  userController.getUserInfo,
  userController.getUserInfoInvalidUsername
);

router.put(
  "/user/update-progress",
  authenticationMiddleware.isAuth,
  userController.updateProgressCheckParam,
  userController.updateProgress
);

router.get(
  "/big-list",
  authenticationMiddleware.isAuth,
  bigListController.getAllBigList
);

router.get(
  "/detail",
  authenticationMiddleware.isAuth,
  detailController.getDetails
);

router.get(
  "/detail/filter",
  authenticationMiddleware.isAuth,
  // Check empty query
  detailController.detailFilterNoParam,
  // Get data by filter
  detailController.getItemsByFilter,
  // Error handling when query is invalid
  detailController.detailInvalidFilter
);

router.get(
  "/detail/random",
  authenticationMiddleware.isAuth,
  detailController.getRandom
);

module.exports = router;
