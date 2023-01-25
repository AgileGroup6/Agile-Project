const e = require("express");
const { pool } = require("./pool.js");

exports.getSingleRecipe = (recipe_id, callback) => {
  pool.query(
    `SELECT Recipe.recipe_id, Recipe.recipe_name, Recipe.instructions,
    Ingredient.ingredient_name, Measurement.amount,
    Category.category_name,
    
    Ingredient.store_has, Ingredient.vegan, Ingredient.fillable,
    Ingredient.weightable, Ingredient.chilled, Ingredient.organic,
    Ingredient.jarred, Ingredient.canned
    FROM Recipe
    JOIN Recipe_Measurement ON (Recipe_Measurement.recipe_id = Recipe.recipe_id)
    JOIN Measurement ON (Measurement.measurement_id = Recipe_Measurement.measurement_id)
    JOIN Ingredient ON (Ingredient.ingredient_id = Measurement.ingredient_id)
    JOIN Category ON (Ingredient.category_id = Category.category_id)
    WHERE Recipe.recipe_id = ?;`,
    [recipe_id],
    (err, result) => {
      if (err) {
        return callback({ code: 500, message: "Database error" });
      }
      // not found
      if (result.length === 0) {
        return callback({ code: 400, message: "Recipe not found" });
      }
      const ingredients = [];
      // possible tags
      const AVAIL_TAGS = [
        "vegan",
        "fillable",
        "weightable",
        "chilled",
        "organic",
        "jarred",
        "canned",
      ];
      for (row of result) {
        // parse all tags for ingredient into array
        const tags = [];
        for (posTag of AVAIL_TAGS) {
          if (row[posTag]) {
            tags.push(posTag);
          }
        }
        ingredients.push({
          name: row.ingredient_name,
          amount: row.amount,
          category: row.category_name,
          tags: tags,
        });
      }

      // callback no error
      callback(null, {
        id: result[0].recipe_id,
        name: result[0].recipe_name,
        instructions: result[0].instructions,
        ingredients: ingredients,
      });
    }
  );
};
