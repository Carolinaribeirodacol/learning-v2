const Professor = require("../models/professorModel");
const { get } = require("../schema/ProfessorSchema");

module.exports = {
  async create(req, res) {
    try {
     const data = req.body;
     console.log(data);
     const result = await Professor.create(data);
      
     return res.send(result);
    } 
    catch(error){
      console.log(error);
    } 
  },

  async delete(req, res) {
    try {
      const data = req.body;
      const result = await Professor.findByIdAndRemove(data.id);

      return res.send(result);
    }
    catch {
      console.log(error);
    }
  },

  async put(req, res) {
    try {
      const data = req.body;
      const result = await Professor.findByIdAndUpdate(data.id,{ name: data.name, cpf: data.cpf, salario: data.salario});
      console.log(data)
      return res.send(result);
    }
    catch(error) {
      console.log(error);
    }
  },

  async get(req, res) {
    try {
      const data = req.body;
      const result = await Professor.find();
      
      return res.send(result);
    }
    catch(error) {
      console.log(error);
    }
  }
}
