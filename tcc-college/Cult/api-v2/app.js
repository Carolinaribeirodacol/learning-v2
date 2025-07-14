const express = require('express');
const fs = require('fs');
const morgan = require('morgan');

const userRouter = require('./routes/userRoutes');

const app = express();

if (process.env.NODE_ENV === 'development') {
  app.use(morgan('dev'));
}

app.use(express.json());

const users = JSON.parse(fs.readFileSync(`${__dirname}/users.json`));

app.use('/api/v1/users', userRouter);

module.exports = app;
