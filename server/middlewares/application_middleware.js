exports.applicationMiddleware = (req, res, next) => {
  res.success = function ({ result = {}, code = 200, message = "" }) {
    return res.json({
      result,
      code,
      message,
    });
  };

  res.error = function ({
    errors = {},
    code = 400,
    message = "",
    result = {},
  }) {
    return res.json({
      errors,
      code,
      message,
      result,
    });
  };

  res.badreq = function ({
    errors = {},
    code = 400,
    message = "",
    result = {},
  }) {
    return res.json({ errors, code, message, result });
  };

  res.forbidden = function ({
    errors = {},
    code = 403,
    message = "",
    result = {},
  }) {
    return res.json({ errors, code, message, result });
  };

  res.unauth = function ({
    errors = {},
    code = 401,
    message = "",
    result = {},
  }) {
    return res.json({ errors, code, message, result });
  };

  res.notfound = function({
    errors = {},
    code = 404,
    message = "Request not found",
    result = {},
  }) {
    return res.json({ errors, code, message, result });
  };

  res.internal = function ({
    errors = {},
    code = 500,
    message = "Internal Server Error",
    result = {},
  }) {
    return res.json({ errors, code, message, result });
  };

  next();
};
