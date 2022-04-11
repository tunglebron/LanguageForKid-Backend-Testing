var modelDetail = require('./../models/Detail');

var getItemsByFilter = (req, res) => {
  let filterByName = req.params.name;

  if (!filterByName) {
    res.status(400).send({ error: true, message: 'Please provide filter name' });
  }

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
    modelDetail.allItemsById(param, function(result) {
      res.status(200).json(result);
    })
  } else {
    res.status(400).send({ error: true, message: 'Invalid filter name' });
  }
}

var getDetails = (req, res) => {
  modelDetail.allItems(function(result) {
    res.status(200).json(result);
  })
}

var getRandom = (req, res) => {

  modelDetail.randomItems(function(result) {
    res.status(200).json(result);
  })

}

module.exports = {
  getItemsByFilter: getItemsByFilter,
  getDetails: getDetails,
  getRandom: getRandom
}




