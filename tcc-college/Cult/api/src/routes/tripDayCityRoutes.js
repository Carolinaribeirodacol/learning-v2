const express = require("express");
const tripDayCityController = require("../controllers/tripDayCityController");

const router = express.Router();

router
  .route("/")
  .get(tripDayCityController.index)
  .post(tripDayCityController.store);

router
  .route("/:id")
  .get(tripDayCityController.show)
  .patch(tripDayCityController.update)
  .delete(tripDayCityController.destroy);

module.exports = router;
