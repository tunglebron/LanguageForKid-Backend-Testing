var getAllBigList = require('../controllers/BigListController');
var detailController = require('../controllers/DetailController');
var express = require('express');
var router = express.Router();

router.get('/bigList', getAllBigList);

router.get('/detail', detailController.getDetails);

router.get('/detail/filter=:name', detailController.getItemsByFilter);

router.get('/detail/random', detailController.getRandom);

module.exports = router;