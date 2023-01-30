const { customLimit } = require("./middleware/rate-limits");

const allIngredients = require("./api/allIngredients");
const allRecipes = require("./api/allRecipes");
const findRecipe = require("./api/findRecipe");
const getRecipe = require("./api/getRecipe");

const setFeatured = require("./api/setFeatured");
const removeFeatured = require("./api/removeFeatured");

const addRecipe = require("./api/addRecipe");

const checkAdminPassword = require("./api/checkAdminPassword");

const accessController = require("./middleware/accessController");

const routes = (route) => {
  route.use("/api/allIngredients", allIngredients.router);
  route.use("/api/allRecipes", allRecipes.router);
  route.use("/api/findRecipe", findRecipe.router);
  route.use("/api/getRecipe", getRecipe.router);

  route.use(
    "/api/checkAdminPassword",
    customLimit(16, 4), // only allow 16 attempts every 4 minutes
    checkAdminPassword.router
  );

  // not used at the moment, testing admin authentication
  route.use(
    "/api/addRecipe",
    // accessController, // must have admin cookie set for this
    addRecipe.router
  );

  route.use("/api/setFeatured", setFeatured.router);

  route.use("/api/removeFeatured", removeFeatured.router);
};

module.exports = routes;
