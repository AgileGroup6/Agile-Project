const e = require('express');
const { pool } = require('./pool.js');

exports.getAllRecipes = (callback) => {
  pool.query(`SELECT Recipe.recipe_name, Recipe.serves,
   Recipe.instructions, Recipe.highlighted  FROM Recipe `
   ,(err, result) => {

      if(err){
        return callback(true, [])
      }
      const recipes = [];

    
      for (const element of result){ 
        
        
    
        recipe = {
          name: element.recipe_name,
          serves: element.serves,      
          tags: element.instructions,
          highlighted: element.highlighted === 1
        }
        recipes.push(recipe)
      }
      callback(false, recipes)
    
    
    })       
  }
