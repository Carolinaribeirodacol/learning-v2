const UserController = require('./Controllers/UserController');
const CityController = require('./Controllers/CityController');

const router = require('express').Router();

router.post('/login', UserController.login);
router.post('/register', UserController.register);
router.get('/cities', CityController.index);
router.post('/registerCity', CityController.add);
router.get('/viewCity', CityController.view);
router.put('/updateCity', CityController.update);
router.delete('/deleteCity', CityController.delete);

module.exports = router;

// mongodb://localhost/firstrest