exports.requestNotFound = (req, res, next) => {
  res.notfound({
    errors: {},
    code: 404,
    message: "Request not found",
    result: {},
  });
}

exports.errorHandling = (err, req, res, next) => {
  console.error(err.stack);
  res.internal({
    errors: {},
    code: 500,
    message: "Internal Server Error",
    result: {},
  });
}