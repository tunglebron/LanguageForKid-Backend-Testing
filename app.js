var bodyParser = require('body-parser');
const dotenv = require('dotenv');
const morgan = require('morgan');
const express = require('express');
const cors = require('cors');
const createError = require('http-errors');
// set up express app
const app = express();
// set up port number
const port = 3001;

//dotenv.config();

var mainRoutes = require('./server/routes/MainRoutes');

// set up session
//const session = require('express-session');
//const path = require('path');

const api_version_1 = '/api/v1';

// app.use(session({
// 	secret: 'secret',
// 	resave: true,
// 	saveUninitialized: true
// }));
app.use(morgan('dev'));
app.use(bodyParser.urlencoded({ extended: false }));
app.use(bodyParser.json());
app.use(cors());

// set up home route
app.get('/', (request, respond) => {
  respond.status(200).json({
    message: 'Home Route',
  });
});

// app.use((req, res, next) => {
// 	next(createError(404));
// });

// app.use((err, req, res) => {
// 	console.log(err.stack);
// 	res.status(err.status || 500).send(err.message);
// });

app.listen(port, (request, respond) => {
  console.log(`Our server is live on ${port}`);
});

app.use(api_version_1, mainRoutes);
