const express = require("express");

const { DATA_HOST } = require("../config.js");

const router = express.Router();
router.get("/", (req, res) => {
  // get GET request paramaters
  // use req.body.PARAM if a post request
  const num1 = req.query.num1;
  const num2 = req.query.num2;

  // check values set
  if (!num1 && !num2) {
    // 400, User error
    return res.status(400).send({
      success: false,
      message: "num1 & num2 GET paramaters not set",
    });
  }

  // check if string is a number "123" = True, "ten" = False
  if (isNaN(num1) && isNaN(num2)) {
    // 400, User error
    return res.status(400).send({
      success: false,
      message: "num1 & num2 are not numbers",
    });
  }

  // process calculation
  const added = Number(num1) + Number(num2);
  return res.status(200).send({
    success: true,
    data: added,
  });
});

// export
exports.router = router;
