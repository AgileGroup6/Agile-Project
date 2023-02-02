const { customLimit } = require("./middleware/rate-limits");

const allIngredients = require("./api/allIngredients");
const allRecipes = require("./api/allRecipes");
const findRecipe = require("./api/findRecipe");
const getRecipe = require("./api/getRecipe");

const setFeatured = require("./api/setFeatured");
const removeFeatured = require("./api/removeFeatured");
const listFeatured = require("./api/listFeatured");

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
    customLimit(32, 4), // only allow 32 attempts every 4 minutes
    checkAdminPassword.router
  );

  route.use("/api/setFeatured", accessController, setFeatured.router);
  route.use("/api/removeFeatured", accessController, removeFeatured.router);
  route.use("/api/listFeatured", accessController, listFeatured.router);

  route.use("/api/addRecipe", accessController, addRecipe.router); // TODO
};

module.exports = routes;
