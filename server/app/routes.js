const addNumbers = require("./api/addNumbers.js");
const ping = require("./api/ping.js");
const adminLogin = require("./api/test.js");

const accessController = require('./middleware/accessController.js');

const routes = (route) => {
  route.use("/api/addNumbers", addNumbers.router);

  route.use("/api/ping", ping.router);

  route.use(
  "/api/adminLogin",
  accessController,
  adminLogin.router
  );
};

module.exports = routes;
