
const { pool } = require('./pool.js');



exports.addRecipeAndMeasurements = (recipe, callback) => {
  // insert recipe into database with title, instructions, ...
  // get inserted recipe ID and use that to make ingredient and create Ingredient_Measurement inserts
  // insert ingredient if not found and get id to link with Ingredient_Measurement

  pool.query(`INSERT INTO Recipe(recipe_name, serves, instructions)
    VALUES (?,?,?)`,
    [recipe.title, recipe.serves, recipe.instructions],
    (err, result) => {
      if (err) {
        return callback(err, -1)
      }
      const recipe_id = result.insertId
      for (measurement in recipe.measurements) {
        pool.query(`SELECT ingredient_id FROM Ingredient WHERE ingredient_name = ?`,
          [measurement.ingredient], (err, result) => {
            if (err) {
              return callback(err, -1)
            }
            

          }
        )

      }
        `SELECT ingredient_id FROM Ingredient WHERE ingredient_name = ?`
      

      // find ingredient_id match ingredients
      `INSERT INTO Measurement(ingredient_id, amount)`

      console.log("inesrt ");
      console.log(result);
    }
  );
}