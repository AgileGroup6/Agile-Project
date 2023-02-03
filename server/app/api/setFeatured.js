const express = require("express");

const { scheduleFeaturedRecipe } = require("../db/scheduleFeaturedRecipe");

const router = express.Router();
router.post("/", (req, res) => {
  const recipe_id = req.body.id;
  const scheduleStart = req.body.scheduleStart;
  const scheduleEnd = req.body.scheduleEnd;

  if (!recipe_id || !scheduleStart || !scheduleEnd) {
    return res.status(400).send({
      success: false,
      message: "id, scheduleStart, scheduleEnd not set",
    });
  }
  // recipe_id is not a number
  if (isNaN(recipe_id) && typeof recipe_id !== "number") {
    return res.status(400).send({
      success: false,
      message: "recipe must be a number",
    });
  }

  scheduleFeaturedRecipe(recipe_id, scheduleStart, scheduleEnd, (err) => {
    if (err) {
      return res.status(500).send({
        success: false,
        message: "database error"
      })
    }
    return res.status(200).send({
      success: true
    })
  })

});

// export
exports.router = router;
