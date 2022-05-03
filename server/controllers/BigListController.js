var modelBigList = require("./../models/BigList");

function getAllBigList(req, res, next) {
  modelBigList.list(function (list) {
    res.success({
      result: {
        data: list.recordset,
        output: list.output,
        rowsAffected: list.rowsAffected,
      },
      code: 200,
      message: "success",
    });
  });
}

module.exports = {
  getAllBigList,
};
