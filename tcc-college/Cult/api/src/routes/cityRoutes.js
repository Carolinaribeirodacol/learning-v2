const express = require("express");
const cityController = require("../controllers/cityController");

const router = express.Router();

router.route("/").get(cityController.index).post(cityController.store);

router
  .route("/:id")
  .get(cityController.show)
  .patch(cityController.update)
  .delete(cityController.destroy);

module.exports = router;
