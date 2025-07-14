const express = require("express");
const ProfessorController = require("./controllers/ProfessorController");
const routes = express.Router();

routes.post("/prof", ProfessorController.create);
routes.delete("/prof", ProfessorController.delete);
routes.put("/prof", ProfessorController.put);
routes.get("/prof", ProfessorController.get);

module.exports = routes;