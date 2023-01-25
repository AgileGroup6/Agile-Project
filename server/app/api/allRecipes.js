const express = require("express");

const {getAllRecipes}= require("../db/getAllRecipes")


const router = express.Router();

router.get("/", (req, res) => {
  getAllRecipes((err, recipes)=>{
    if(err){
      return res.status(500).send({
        success: false,
        message: "database connection error",
      });
      
    } 
    return res.status(200).send({
      success: true,
      data: recipes,
    });
  })
  
})




exports.router = router;
