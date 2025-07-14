const express = require("express");
const favoriteController = require("../controllers/favoriteController");

const router = express.Router();

router.route("/").get(favoriteController.index).post(favoriteController.store);

router
  .route("/:id")
  .get(favoriteController.show)
  .patch(favoriteController.update)
  .delete(favoriteController.destroy);

module.exports = router;
