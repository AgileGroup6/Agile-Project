const { pool } = require("./pool.js");

exports.getScheduledRecipes = (callback) => {
  pool.query(
    `SELECT Recipe.recipe_id, Recipe.recipe_name,
    Recipe.highlight_start, Recipe.highlight_end
    FROM Recipe
    WHERE Recipe.highlight_start IS NOT NULL
    AND Recipe.highlight_end IS NOT NULL;
    `,
    (err, result) => {
      if (err) {
        return callback(err, []);
      }

      const recipes = [];
      for (row of result) {
        recipes.push({
          id: row.recipe_id,
          name: row.recipe_name,
          highlight_start: row.highlight_start,
          highlight_end: row.highlight_end,
        });
      }
      callback(null, recipes);
    }
  );
};
