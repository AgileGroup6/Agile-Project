//Test page for admin authentication. To be removed and replaced with admin panel
const express = require("express");

const { validatePassword } = require("../middleware/validator");

const router = express.Router();
router.post("/", (req, res) => {
  const password = req.body.password;
  console.log(password);
  if (!password) {
    return res.status(400).send({
      success: false,
      message: "password paramater not set",
    });
  }

  if (validatePassword(password)) {
    return res.status(200).send({
      success: true,
    });
  }

  return res.status(400).send({
    success: false,
    message: "invalid password",
  });
});

// export
exports.router = router;
