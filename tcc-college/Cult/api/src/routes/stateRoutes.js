const express = require("express");
const stateController = require("../controllers/stateController");

const router = express.Router();

router.route("/").get(stateController.index).post(stateController.store);

router
  .route("/:id")
  .get(stateController.show)
  .patch(stateController.update)
  .delete(stateController.destroy);

module.exports = router;
