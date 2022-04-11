var bodyParser = require('body-parser');
//var logger = require('logger');
var mainRoutes = require('./server/routes/MainRoutes')
const express = require('express');
// set up express app
const app = express();
// set up port number
const port = 3001;

const api_version_1 = '/api/v1';

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: false }));

// set up home route
app.get('/', (request, respond) => {
  respond.status(200).json({
    message: 'Home Route',
  });
});

app.listen(port, (request, respond) => {
  console.log(`Our server is live on ${port}`);
});

app.use(api_version_1, mainRoutes);