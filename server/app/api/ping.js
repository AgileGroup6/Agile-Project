const express = require("express");

const router = express.Router();
router.post("/", (req, res) => {
  res.status(200).send({
    success: true,
    data: "pong",
  });
});

// export
exports.router = router;
