const addNumbers = require("./api/addNumbers.js");
const ping = require("./api/ping.js");

const routes = (route) => {
  route.use("/api/addNumbers", addNumbers.router);

  route.use("/api/ping", ping.router);
};
module.exports = routes;
