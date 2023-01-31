const express = require("express");

const { getScheduledRecipes } = require("../db/getScheduledRecipes");

const router = express.Router();
router.get("/", (req, res) => {
  getScheduledRecipes((err, recipes) => {
    if (err) {
      return res.status(500).send({
        success: false,
        message: "database error",
      });
    }
    return res.status(200).send({
      success: true,
      data: recipes,
    });
  });
});

// export
exports.router = router;
