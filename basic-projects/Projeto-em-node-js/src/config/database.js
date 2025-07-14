const mongoose = require("mongoose");

mongoose.connect(
  process.env.database,
  {
    useNewUrlParser: true, 
    useUnifiedTopology: true,
  },
  () => console.log("Banco de dados conectado")
);

module.exports = mongoose;