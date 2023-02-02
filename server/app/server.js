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

// let api return empty and undefined key pairs
app.set("json replacer", undefined);

// configure api routes
routes(app);

// handle errors
errors(app);

// begin server
const server = app.listen(port, () => {
  console.log("Server listening at http://localhost:%s", port);
});
