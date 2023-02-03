const { pool } = require("./pool.js");

exports.addRecipeAndMeasurements = (recipe, callback) => {
  addRecipe(recipe).then((recipe_id) => {
    if (recipe_id === -1) {
      return callback(true, -1);
    }
    callback(null, recipe_id);
  });
};

// pair programmed with ChatGPT
const addRecipe = async (recipe) => {
  pool.query(
    "INSERT INTO Recipe (recipe_name, serves, instructions) VALUES (?, ?, ?)",
    [recipe.title, recipe.serves, recipe.instructions],
    (error, recipeResult) => {
      if (error) throw error;

      let recipeId = recipeResult.insertId;

      let measurements = recipe.measurements;
      measurements.forEach((measurement) => {
        let ingredientName = measurement.ingredient;
        let ingredientAmount = measurement.amount;

        pool.query(
          "SELECT ingredient_id FROM Ingredient WHERE ingredient_name = ?",
          [ingredientName],
          (error, ingredientResult) => {
            if (error) throw error;

            let ingredientId = undefined;
            if (ingredientResult.length > 0) {
              ingredientId = ingredientResult[0].ingredient_id;
            } else {
              pool.query(
                "INSERT INTO Ingredient (ingredient_name) VALUES (?)",
                [ingredientName],
                (error, newIngredientResult) => {
                  if (error) throw error;
                  ingredientId = newIngredientResult.insertId;
                }
              );
            }

            if (ingredientId) {
              pool.query(
                "INSERT INTO Measurement (ingredient_id, amount) VALUES (?, ?)",
                [ingredientId, ingredientAmount],
                (error, measurementResult) => {
                  if (error) throw error;

                  let measurementId = measurementResult.insertId;
                  pool.query(
                    "INSERT INTO Recipe_Measurement (recipe_id, measurement_id) VALUES (?, ?)",
                    [recipeId, measurementId],
                    (error) => {
                      if (error) throw error;
                    }
                  );
                }
              );
            }
          }
        );
      });
    }
  );
};
