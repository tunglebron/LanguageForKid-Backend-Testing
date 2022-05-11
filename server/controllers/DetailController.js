var modelDetail = require("./../models/Detail");

var detailFilterNoParam = (req, res, next) => {
  let filterById = req.query.id;
  if (filterById == undefined || filterById == null) {
    res.error({
      errors: {},
      code: 400,
      message: "No filter id provided",
      result: {},
    });
  } else {
    next();
  }
};

var detailInvalidFilter = (req, res, next) => {
  res.error({
    errors: {},
    code: 400,
    message: "Invalid filter id",
    result: {},
  });
}

var getItemsByFilter = (req, res, next) => {
  let bigListId = req.query.id;

  if (bigListId != "" && bigListId != "-1") {
    modelDetail.allItemsById(bigListId, function (result) {
      res.success({
        result: {
          data: result.recordset,
          output: result.output,
          rowsAffected: result.rowsAffected,
        },
        code: 200,
        message: "",
      });
    });
  } else {
    next();
  }
};

var getDetails = (req, res) => {
  modelDetail.allItems(function (result) {
    res.success({
      result: {
        data: result.recordset,
        output: result.output,
        rowsAffected: result.rowsAffected,
      },
      code: 200,
      message: "",
    });
  });
};

var getRandom = (req, res) => {
  modelDetail.randomItems(function (result) {
    res.success({
      result: {
        data: result.recordset,
        output: result.output,
        rowsAffected: result.rowsAffected,
      },
      code: 200,
      message: "",
    });
  });
};

module.exports = {
  getItemsByFilter: getItemsByFilter,
  getDetails: getDetails,
  getRandom: getRandom,
  detailFilterNoParam: detailFilterNoParam,
  detailInvalidFilter: detailInvalidFilter,
};
