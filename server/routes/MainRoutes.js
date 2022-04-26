var bigListController = require('../controllers/BigListController');
var detailController = require('../controllers/DetailController');
var userController = require('../controllers/UserController');
var express = require('express');
var router = express.Router();

router.post('/user/register', userController.register);

router.get('/bigList', bigListController.getAllBigList);

router.get('/detail', detailController.getDetails);

router.get('/detail/filter=:name', detailController.getItemsByFilter);

router.get('/detail/random', detailController.getRandom);

module.exports = router;