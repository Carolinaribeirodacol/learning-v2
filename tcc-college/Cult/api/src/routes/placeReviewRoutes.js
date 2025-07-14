const express = require("express");
const placeReviewController = require("../controllers/placeReviewController");

const router = express.Router();

router
  .route("/")
  .get(placeReviewController.index)
  .post(placeReviewController.store);

router
  .route("/:id")
  .get(placeReviewController.show)
  .patch(placeReviewController.update)
  .delete(placeReviewController.destroy);

module.exports = router;
