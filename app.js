var bodyParser = require("body-parser");
const dotenv = require("dotenv");
const morgan = require("morgan");
const express = require("express");
const cors = require("cors");
const createError = require("http-errors");
// set up express app
const app = express();
// set up port number
const port = 3001;
// set up api api version
const api_version = "/api/v1";

// Middlewares
var applicationMiddleware = require("./server/middlewares/application_middleware");
var errorMiddleware = require("./server/middlewares/error_middleware");

// Routes
var mainRoutes = require("./server/routes/MainRoutes");

app.use(morgan("dev"));
app.use(bodyParser.urlencoded({ extended: false }));
app.use(bodyParser.json());
app.use(cors());

dotenv.config();

// set up home route
app.get("/", (request, respond) => {
  respond.status(200).json({
    message: "Home Route",
  });
});

app.listen(port, (request, respond) => {
  console.log(`Our server is live on ${port}`);
});

app.use(applicationMiddleware.applicationMiddleware);

app.use(api_version, mainRoutes);

app.use(errorMiddleware.requestNotFound);

app.use(errorMiddleware.errorHandling);
