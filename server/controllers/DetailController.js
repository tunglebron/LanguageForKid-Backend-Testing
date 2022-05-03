var modelDetail = require("./../models/Detail");

var detailFilterNoParam = (req, res, next) => {
  let filterByName = req.query.name;
  if (filterByName == undefined || filterByName == null) {
    res.error({
      errors: {},
      code: 400,
      message: "No filter name provided",
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
    message: "Invalid filter name",
    result: {},
  });
}

var getItemsByFilter = (req, res, next) => {
  let filterByName = req.query.name;

  let param = "";

  switch (filterByName) {
    case "alphabet":
      param = "1";
      break;
    case "number":
      param = "2";
      break;
    case "animal":
      param = "3";
      break;
    case "fruit":
      param = "4";
      break;
    case "geometry":
      param = "5";
      break;
    case "school":
      param = "6";
      break;
    case "color":
      param = "7";
      break;
    case "flower":
      param = "8";
      break;
    case "vehicle":
      param = "9";
      break;
    case "country":
      param = "10";
      break;
    default:
      param = "-1";
      break;
  }

  if (param != "" && param != "-1") {
    modelDetail.allItemsById(param, function (result) {
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
