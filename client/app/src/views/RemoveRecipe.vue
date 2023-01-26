<template>
    <head>
        <title>Remove Recipe</title>
    </head>
    <body>
        <header>
            <h1 class="title">Remove Recipe</h1>
        </header>
        
        <div class="input" style="width: 18rem; color: black;">
            <img class="card-img-left" src="../assets/logo.svg" alt="Card image cap">
            <div class="card-body">
              <h5 style="color: black;" class="card-title">Bean Curry</h5>
              <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
              <a href="#" class="btn btn-primary">Remove</a>
            </div>
          </div>

    </body>
  </template>
  
  <script>

  </script>
  
  <style>
  
    * {
      font-family: "arial";
      width: 100%;
    }

  .input {
    margin-bottom: 24px;
    width: 350px;
    display: flex;
    flex-direction: column;
    align-items: flex-start;
    align-self: stretch;
  }

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