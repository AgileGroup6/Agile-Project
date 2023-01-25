const express = require("express");

const {getAllIngredients}= require("../db/getAllIngredients")


const router = express.Router();

router.get("/", (req, res) => {
  getAllIngredients((err, ingredients)=>{
    if(err){
      return res.status(500).send({
        success: false,
        message: "database connection error",
      });
    } 
    return res.status(200).send({
      success: true,
      data: ingredients,
    });
  })
  
})




exports.router = router;
