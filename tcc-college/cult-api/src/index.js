require('dotenv/config');
const cors = require('cors');
const express = require('express');
const apiRoutes = require("./routes");
const jwt = require('jsonwebtoken');

const app = express();
const port = process.env.PORT || 8085;

function checkPermission(req, res, next) {
    if(req.path != '/login' && req.path != '/register') {
        const token = req.headers['authorization'];
        if(!token) return res.status(401).send({ message: 'Token não informado!' });
            jwt.verify(token, process.env.TOKEN_SECRET, function(err, decoded) {
                if(err) return res.status(500).send({ message: "Acesso negado" });
                req.userId = decoded.id;
                next();
            });
    } else {
        next();
    }
}

app.listen(port, function() {
    console.log("Running Cult on Port " + port);
});
app.use(express.json());
// app.use(checkPermission);
app.use(cors());
app.use('/', apiRoutes);

