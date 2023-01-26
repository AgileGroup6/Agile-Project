const express = require("express");
const bodyParser = require("body-parser");
const cors = require("cors");

const routes = require("./routes");
const errors = require("./errors");

// server setup
const app = express();

const port = 3000;

// parsing json and form data
app.use(bodyParser.urlencoded({ extended: false }));
app.use(express.json());

// Cross Origin Resource Sharing
app.use(cors());

// configure api routes
routes(app);

// handle errors
errors(app);

// begin server
const server = app.listen(port, () => {
  console.log("Server listening at http://localhost:%s", port);
});
