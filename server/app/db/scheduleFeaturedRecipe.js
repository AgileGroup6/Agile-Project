const { pool } = require("./pool.js");

exports.scheduleFeaturedRecipe = (recipe_id,start,end, callback) => {
  pool.query(
    `UPDATE Recipe
    SET highlight_start = ?, highlight_end = ?
    WHERE recipe_id = ?;`,
    [start, end, recipe_id],
    (err, result) => {
      if (err) {
        console.log(err);
        return callback(err);
      }
      callback(null)
    }
  );
};
