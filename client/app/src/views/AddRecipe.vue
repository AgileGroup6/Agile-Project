<template>
    <body>
        <head>
            <title>Add Recipe</title>
        </head>

        <header>
            <h1 class="title">Admin Page</h1>
        </header>
  
        <form>
          <div class="input">
          <label class="left-text" for="title">Title *</label>
          <input class="bar" type="text" name="title" placeholder="Title" required>
        </div>

        <div class="input">
            <label class="left-text" for="cars">Choose your ingredients:</label>
            <select class="bar" name="cars" id="cars">
                <option v-for="ingredient in ingredients" :key="ingredient.id">{{ ingredient.name }}</option>
            </select>
        </div>
        

        <div class="input">
          <label class="left-text" for="ingredients">Ingredients *</label>
          <input class="bar" type=text name="ingredients" placeholder="Ingredients" required>
        </div>

        <div class="input">
          <label class="left-text" for="ingredients">Image *</label>
          <input class="bar" type=text name="selectImage" placeholder="Choose from files" required>
        </div>

        <div class="input">
            <label class="left-text" for="instructions">Instructions *</label>
            <textarea id="instructions" name="instructions" rows="4" cols="50"></textarea>
        </div>
  
          <button type="button" @click="doLogin" id="button-continue">ADD RECIPE</button>
        </form>
    </body>
  </template>
  
  <script>
  export default {
     data() {
        return {
          ingredients: [{id: 1, name:"1"},{id: 2, name: "deadad"},{id: 3, name: "dadawd"},{id: 4, name: "yep"},{id: 4, name:"other"}]
        }
     },
  }
  </script>
  
  <style>
  
    * {
      font-family: "arial";
      background-color: #FFFFFF;
      width: 100%;
    }

    
    /* .input {
    background-color: #FFFFFF;
    margin-bottom: 24px;
    width: 350px;
    display: flex;
    flex-direction: column;
    align-items: flex-start;
    align-self: stretch;
  } */

  .left-text {
    width: 350px;
    font-size: 14px;
    font-weight: 600;
    line-height: normal;
    color: #191D23;
    flex: 1;
    margin-bottom: 4px;
  }

  .bar {
    border-radius: 4px;
    padding: 7px 11px;
    display: flex;
    align-items: center;
    align-self: stretch;
    border: 1px solid #000000;
  }
    
    .title {
        font-family: "arial";
        font-size: 36px;
        font-weight: 700;
        line-height: 44px;
        color: #000000;
        margin-bottom: 4px;
        letter-spacing: -0.72px;
    }

    body {
      background-color: #FFFFFF;
      padding: 24px 24px 350px;
      /* display: flex; */
      flex-direction: column;
      align-items: center;
    }
  
    .logo {
      width: 175px;
      height: 110px;
      margin-bottom: 24px;
      margin-left: auto;
      margin-right: auto;
    }
  
    header {
      margin-bottom: 24px;
      display: flex;
      flex-direction: column;
      align-items: flex-start;
      width: 350px;
    }
  
    h1 {
      font-weight: 700;
      line-height: normal;
      color: #191D23;
      align-self: stretch;
      margin-bottom: 8px;
    }
  
    .subtitle {
      font-size: 14px;
      font-weight: 400;
      line-height: normal;
      color: #64748B;
      align-self: stretch;
    }
  
    #button-continue {
      background-color: #329E63;
      border-radius: 4px;
      padding: 6px 12px;
      display: flex;
      align-items: center;
      justify-content: center;
      width: 291px;
      font-size: 16px;
      font-weight: 600;
      line-height: normal;
      color: #FFFFFF;
      text-align: center;
      transition-duration: 0.4s;
    }
  
    #button-continue:hover {
      box-shadow: 0 12px 16px 0 rgba(0, 0, 0, 0.24), 0 17px 50px 0 rgba(0, 0, 0, 0.19);
    }
  
    span {
      display: block;
      margin-left: 20px;
      color: red;
      font-style: italic;
    }
  </style>