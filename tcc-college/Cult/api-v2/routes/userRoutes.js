const express = require('express');
const userController = require('../controllers/userController');

const router = express.Router();

router
  .route('/')
  .get(userController.index)
  .post(userController.store);

router
  .route('/:id')
  .get(userController.show)
  .patch(userController.update)
  .delete(userController.destroy);

module.exports = router;
