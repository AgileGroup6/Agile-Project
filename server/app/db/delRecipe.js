const { pool } = require("./pool.js");

exports.delRecipe = (recipe_id, callback) => {
  pool.query(`DELETE FROM Recipe WHERE recipe_id = ?`, [recipe_id], (err) => {
    if (err) {
      return callback(err);
    }
    callback();
  });
};
