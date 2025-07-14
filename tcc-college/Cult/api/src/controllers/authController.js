const bcrypt = require("bcrypt");
const jwt = require("jsonwebtoken");
const User = require("../models/User");

exports.signup = async (req, res) => {
  console.log(req.body);
  try {
    const { name, password, email, phone } = req.body;
    const salt = await bcrypt.genSalt(10);
    const hashedPassword = await bcrypt.hash(password, salt);
    const user = await User.findOne({ email });

    if (user) {
      return res.send({ message: "Usuário existente!" });
    } else {
      await User.create({ name, password: hashedPassword, email, phone });
      return res.send({ message: "Usuário criado com sucesso!" });
    }
  } catch (err) {
    return res.status(400).send({ err });
  }
};

exports.login = async (req, res) => {
  try {
    const { email, password } = req.body;
    const user = await User.findOne({ email });

    if (user && password) {
      const validPass = await bcrypt.compare(password, user.password);
      if (validPass) {
        const token = await jwt.sign(
          { id: user._id },
          process.env.TOKEN_SECRET,
          {
            expiresIn: 604,
          }
        );
        return res.header("Authorization", token).send({ token });
      } else {
        return res.status(404).send({ message: "Credenciais não encontradas" });
      }
    } else {
      return res.status(404).send({ message: "Credenciais não encontradas" });
    }
  } catch (err) {
    return res.status(400).send({ err });
  }
};
