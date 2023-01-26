const express = require("express");

const { getSingleRecipe } = require("../db/getSingleRecipe");

const router = express.Router();
router.get("/", (req, res) => {
  const recipe_id = req.query.id;

  if (!recipe_id) {
    return res.status(400).send({
      success: false,
      message: "ID param not set",
    });
  }

  // recipe_id is not a number
  if (isNaN(recipe_id) && typeof recipe_id !== "number") {
    return res.status(400).send({
      success: false,
      message: "ID must be a number",
    });
  }

  getSingleRecipe(recipe_id, (err, recipe) => {
    // custom err object
    if (err) {
      return res.status(err.code).send({
        success: false,
        message: err.message,
      });
    }
    return res.status(200).send({
      success: true,
      data: recipe,
    });
  });
});

// export
exports.router = router;
