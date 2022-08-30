const express = require("express");
const placeController = require("../controllers/placeController");

const router = express.Router();

router.route("/").get(placeController.index).post(placeController.store);

router
  .route("/:id")
  .get(placeController.show)
  .patch(placeController.update)
  .delete(placeController.destroy);

module.exports = router;
