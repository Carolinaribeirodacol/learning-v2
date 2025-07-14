const express = require("express");
const tripDayController = require("../controllers/tripDayController");

const router = express.Router();

router.route("/").get(tripDayController.index).post(tripDayController.store);

router
  .route("/:id")
  .get(tripDayController.show)
  .patch(tripDayController.update)
  .delete(tripDayController.destroy);

module.exports = router;
