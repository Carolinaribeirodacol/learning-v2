const express = require("express");
const imageController = require("../controllers/imageController");

const router = express.Router();

router.route("/").get(imageController.index).post(imageController.store);

router
  .route("/:id")
  .get(imageController.show)
  .patch(imageController.update)
  .delete(imageController.destroy);

module.exports = router;
