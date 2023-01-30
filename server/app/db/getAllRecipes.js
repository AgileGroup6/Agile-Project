
const { pool } = require('./pool.js');



exports.getAllRecipes = (callback) => {
  pool.query(`SELECT Recipe.recipe_id, Recipe.recipe_name, Recipe.serves,
    COALESCE(Recipe.highlight_start > NOW() and Recipe.highlight_end < NOW(), 0) as highlighted,
    Ingredient.ingredient_name, Ingredient.store_has,
    Category.category_name, Measurement.amount,
    Ingredient.store_has, Ingredient.vegan,
    Ingredient.fillable, Ingredient.weightable, Ingredient.chilled,
    Ingredient.organic, Ingredient.jarred, Ingredient.canned
    FROM Recipe
    JOIN Recipe_Measurement ON (Recipe.recipe_id = Recipe_Measurement.recipe_id)
    JOIN Measurement ON (Measurement.measurement_id = Recipe_Measurement.measurement_id)
    JOIN Ingredient ON (Ingredient.ingredient_id = Measurement.ingredient_id)
    JOIN Category ON (Ingredient.category_id = Category.category_id);
    `, (err, result) => {
      if (err) {
        return callback(err, [])
      }
      var lastId = -1
      var index = 0
      const recipes = []
      var ingredients = []
      for (row of result) {
        index += 1
        if (lastId != -1 && lastId != row.recipe_id && index < result.length) {
          recipes.push({
            id: row.recipe_id,
            name: row.recipe_name,
            serves: row.serves,
            highlighted: row.highlighted === 1,
            ingredients: ingredients
          })
          ingredients = []
        }
        lastId = row.recipe_id
        const AVAIL_TAGS = ["vegan","fillable","weighable","chilled","organic","jarred","canned"]
        const tags = [];
        for (posTag of AVAIL_TAGS) {
          if (row[posTag]) {
            tags.push(posTag)
          }
        }
        ingredients.push({
          id: row.ingredient_id,
          name: row.ingredient_name,
          store_has: row.store_has === 1,
          highlighted: row.highlighted === 1,
          tags: tags
        })
      }

      callback(null, recipes)
    }
  );
}