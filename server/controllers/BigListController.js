var modelBigList = require('./../models/BigList');

function getAllBigList(req, res) {
  modelBigList.list(function(list) {
    res.status(200).json(list);
  })
}

module.exports = getAllBigList;