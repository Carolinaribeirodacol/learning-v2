const express = require("express");
const countryController = require("../controllers/countryController");

const router = express.Router();

router.route("/").get(countryController.index).post(countryController.store);

router
  .route("/:id")
  .get(countryController.show)
  .patch(countryController.update)
  .delete(countryController.destroy);

module.exports = router;
