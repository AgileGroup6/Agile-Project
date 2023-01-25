const express = require("express");

const { recipeFinder } = require("../db/recipeFinder");

const router = express.Router();
router.post("/", (req, res) => {
  const ingredients = req.body.ingredients;
  if (!ingredients) {
    return res.status(400).send({
      success: false,
      message: "ingredients param not set",
    });
  }

  // check ingredients param is an array of strings
  if (!validStringArr(ingredients)) {
    return res.status(400).send({
      success: false,
      message: "ingredients must be an array of strings",
    });
  }

  recipeFinder(ingredients, (recipes) => {
    res.status(200).send({
      success: true,
      data: {
        recipes: recipes,
      },
    });
  });
});

function validStringArr(arr) {
  // arr is an array
  if (arr.constructor !== Array) {
    return false;
  }

  // each element of arr is a string
  for (let i = 0; i < arr.length; i++) {
    if (typeof arr[i] !== "string") {
      return false;
    }
  }
  // all checks passed
  return true;
}

// export
exports.router = router;
