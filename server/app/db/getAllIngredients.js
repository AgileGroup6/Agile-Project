const e = require('express');
const { pool } = require('./pool.js');

exports.getAllIngredients = (callback) => {
  pool.query(`SELECT Ingredient.ingredient_name, Ingredient.store_has, Ingredient.vegan,
    Ingredient.fillable, Ingredient.weightable, Ingredient.chilled,
    Ingredient.organic, Ingredient.jarred, Ingredient.canned,
    Category.category_name
    FROM Ingredient
    JOIN Category ON (Ingredient.category_id = Category.category_id);`, (err, result) => {
      if(err){
        return callback(true, [])
      }
      const ingredients = [];

    
      for (const element of result){ 
        const calculatedTags = [];
        
          
          if (element.vegan){
            calculatedTags.push("vegan")
          }
          if (element.fillable){
            calculatedTags.push("fillable")
          }
          if (element.weightable){
            calculatedTags.push("weighable")
          }
          if (element.chilled){
            calculatedTags.push("chilled")
          }
          if (element.organic){
            calculatedTags.push("organic")
          }
          if (element.jarred){
            calculatedTags.push("jarred")
          }
          if (element.canned){
            calculatedTags.push("canned")
          }

        
    
        ingredient = {
          name: element.ingredient_name,
          category: element.category_name,      
          store_has: element.store_has === 1,   
          tags: calculatedTags
        }
        ingredients.push(ingredient)
      }
      callback(false, ingredients)
    
    
    })       
  }
