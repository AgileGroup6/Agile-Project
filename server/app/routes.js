const allIngredients = require("./api/allIngredients.js");
const adminLogin = require("./api/adminLogin.js");

const findRecipe = require("./api/findRecipe.js");
const getRecipe = require("./api/getRecipe.js");

const accessController = require("./middleware/accessController.js");

const routes = (route) => {
  route.use("/api/allIngredients", allIngredients.router);

  route.use("/api/findRecipe", findRecipe.router);

  route.use("/api/getRecipe", getRecipe.router);

  route.use(
    "/api/adminLogin",
    accessController, //Requires authorization to access admin panel
    adminLogin.router
  );
};

module.exports = routes;
