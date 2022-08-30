const mongoose = require("../config/database");
const ProfessorSchema = require("../schema/ProfessorSchema");

const professor = mongoose.model("professor", ProfessorSchema);

module.exports = professor;