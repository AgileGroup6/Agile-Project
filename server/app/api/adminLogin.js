//Test page for admin authentication. To be removed and replaced with admin panel
const express = require("express");

const router = express.Router();
router.get("/", (req, res) => {
  res.status(200).send({
    success: true,
    message: "working",
  });
});

// export
exports.router = router;
