const express = require("express");

const router = express.Router();

// template to test admin authentication
router.get("/", (req, res) => {
  return res.status(200).send({
    success: true,
    data: "recipes added",
  });
});

exports.router = router;
