const User = require('../Models/UserModel');
const bcrypt = require('bcrypt-nodejs');
const jwt = require('jsonwebtoken');
const { response } = require('express');

module.exports = {
  async register(req, res) {
    console.log(req.body);
    try{
      const { name, password, email, phone } = req.body;
      const salt = await bcrypt.genSalt(10); 
      const hashedPassword = await bcrypt.hash(password, salt);
      const user = await User.findOne({ email });

      if( user ) {
        return res.send({ message: "Usuário existente!" });
      }     
      else {
        await User.create({ name, password: hashedPassword, email, phone });
        return res.send({ message: "Usuário criado com sucesso!" });
      }

    } catch(err) {
        return response.status(400).send({ err });
    }
  },
  async login(req, res) {
    try{
      const { email, password } = req.body;
      const user = await User.findOne({ email });
      
      if(user && password) {
        const validPass = await bcrypt.compare(password, user.password);
        if(validPass) {
          const token = await jwt.sign({ id: user._id }, process.env.TOKEN_SECRET, {
            expiresIn: 604 
          });
          return res.header('Authorization', token).send({ token });
        }
        else {
          return response.status(404).send({ message: "Credenciais não encontradas" }) 
        }         
      } else {
        return response.status(404).send({ message: "Credenciais não encontradas" });
      }
      
    } catch(err) {
        return response.status(400).send({ err });
    }
  },
}