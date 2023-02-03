const express = require("express");


const {addRecipeAndMeasurements} = require("../db/addRecipeAndMeasurements")

const router = express.Router();

// template to test admin authentication
router.post("/", (req, res) => {
  const title = req.body.title
  const measurements = req.body.measurements
  const serves = req.body.serves
  const instructions = req.body.instructions

  if (!title || !measurements || !serves || !instructions) {
    return res.status(400).send({
      success: false,
      message: "title, measurements, serves, instructions params must be set"
    })
  }

  if (!validateMeasurements(measurements)) {
    return res.status(400).send({
      success: false,
      message: 'measurements not valid array, must be [{ingredient: "", amount: ""},...]'
    })
  }


  addRecipeAndMeasurements({
    title: title,
    serves: serves,
    instructions: instructions,
    measurements: measurements,
  }, (err, recipe_id) => {
    if (err) {
      return res.status(500).send({
        success: false,
        message: "database error"
      })
    }
    // success
    return res.status(200).send({
      success: true,
      data: {
        recipe_id: recipe_id
      }
    })
  })
});



function validateMeasurements(measurements) {
  // is array
  if (measurements.constructor !== Array) {
    return false
  }
  // ingredient,amount pair in array
  for (measurement of measurements) {
    if (!measurement.ingredient || !measurement.amount) {
      return false
    }
  }

  return true
}
exports.router = router;
