const allIngredients = require("./api/allIngredients");
const allRecipes = require("./api/allRecipes");
const findRecipe = require("./api/findRecipe");

const addRecipe = require("./api/addRecipe");

const checkAdminPassword = require("./api/checkAdminPassword");

const accessController = require("./middleware/accessController");

const routes = (route) => {
  route.use("/api/allIngredients", allIngredients.router);

  route.use("/api/allRecipes", allRecipes.router);

  route.use("/api/findRecipe", findRecipe.router);

  route.use("/api/checkAdminPassword", checkAdminPassword.router);

  // not used at the moment, testing admin authentication
  route.use(
    "/api/addRecipe",
    accessController, // must have admin cookie set for this
    addRecipe.router
  );
};

module.exports = routes;
