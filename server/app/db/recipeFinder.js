const { pool } = require("./pool.js");

exports.recipeFinder = (ingredients, callback) => {
  // find all alternative ingredients
  // do search with those ingredients

  // monster of a sql query that took a night to write which I forgot how it
  // worked half way through but just kept on writing hoping that it would work
  pool.query(
    `
    SELECT Recipe.recipe_id, Recipe.recipe_name,
    Recipe.serves,
    ROUND((SUM(Ingredient.ingredient_name IN (?)) / COUNT(Ingredient.ingredient_id)) * 0.6
    +
    (SUM(Ingredient.ingredient_id IN (
      SELECT Ingredient.ingredient_id
      FROM Ingredient
      JOIN Grp ON (Grp.grp_id = Ingredient.grp_id)
      WHERE Grp.grp_id IN (SELECT grp_id FROM Ingredient WHERE ingredient_name IN (?))
    )) / COUNT(Ingredient.ingredient_id)) * 0.4, 2) AS score,
    COUNT(Ingredient.ingredient_name) AS ingredient_count
    FROM Recipe
    JOIN Recipe_Measurement ON (Recipe.recipe_id = Recipe_Measurement.recipe_id)
    JOIN Measurement ON (Measurement.measurement_id = Recipe_Measurement.measurement_id)
    JOIN Ingredient ON (Ingredient.ingredient_id = Measurement.ingredient_id)
    GROUP BY Recipe.recipe_id;`,
    [ingredients, ingredients],
    (err, response) => {
      if (err) {
        return res.status(500).send({
          success: false,
          message: "Database error",
        });
      }

      const recipes = [];
      for (row of response) {
        recipes.push({
          id: row.recipe_id,
          name: row.recipe_name,
          serves: row.serves,
          score: row.score,
          ingredient_count: row.ingredient_count,
        });
      }
      // sort descending
      recipes.sort(function (a, b) {
        return b.score - a.score;
      });
      callback(recipes);
    }
  );
};
