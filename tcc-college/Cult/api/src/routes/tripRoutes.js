const express = require("express");
const tripController = require("../controllers/tripController");

const router = express.Router();

router.route("/").get(tripController.index).post(tripController.store);

router
  .route("/:id")
  .get(tripController.show)
  .patch(tripController.update)
  .delete(tripController.destroy);

module.exports = router;
