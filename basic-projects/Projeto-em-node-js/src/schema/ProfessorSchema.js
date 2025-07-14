const mongoose = require("../config/database");
const Schema = mongoose.Schema;

const ProfessorSchema = new Schema({
  name: {
    type: String, 
    required: true,
  },
  cpf: {
    type: Number,
    required: true,
  },
  salario: {
    type: Number,
    required: true,
  },
  fuma: {
    type: Boolean,
    required: true,
  }
});

module.exports = ProfessorSchema;