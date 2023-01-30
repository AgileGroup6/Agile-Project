<template>
    <body>
      <head>
        <title>Highlight Recipe</title>
      </head>
   
      <form style="color: black;" class="container">
  
        <header class="row">
          <h1 class="title">Highlight Recipe</h1>
        </header>
        <div class="row boxes">
        <div class="form-group">
          <label for="title">Title *</label>
          <input type="text" class="form-control" id="title" placeholder="Title" required>
        </div>
      </div>
       
  
      </form>
    </body>
  </template>
  
  <script>
    export default {
      data() {
        return {
          // TODO fetch ingredients from pinata store
          
        };
      },
      methods: {
        
      },
    };