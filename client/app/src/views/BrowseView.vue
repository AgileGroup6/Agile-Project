<template>
  <div class ="container d-flex justify-content-center align-item-center" >
    <div class="browse">
      <h1>Browse Store</h1>
    </div>
  </div>
    <div class="dropdown-center">
      <div class = "row" >
    <button class="btn btn-success dropdown-toggle" type="button" id="categoryButton" data-bs-toggle="dropdown" aria-expanded="false">
      Browse by Category
    </button>
    <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton">
      <!-- THIS IS CURRENTLY HARD-CODED DATA!!! CHANGE BEFORE FINAL -->
      <li><a class="dropdown-item text-center" href="#" @click="search('Bread Loafs')">Bread Loafs</a></li>
      <li><a class="dropdown-item text-center" href="#" @click="search('Cereals')">Cereals</a></li>
      <li><a class="dropdown-item text-center" href="#" @click="search('Fresh Fruits')">Fresh Fruit</a></li>
    </ul>
  </div>
</div>
  

<!-- Container for the ingredient cards-->

<div class = "container ingredientsGrid">
      <!--The array is sliced in two so that the items are not added to just one column and are instead added evenly across both of them-->
      <ingredientCard v-for="item in testNames"
          class="card"
          :key="item.id" 
          :ingredientArray="item"
          
      /> 

</div>
  

</template>

<script>

  import ingredientCard from '../components/browseAll/ingredientCard.vue';

  export default {

    components: {
      ingredientCard,
      },
    data () {
      
      return {
        range: 0,
        testNames: [ {
          id: 1,
          name: 'Baguette',
          image: '../../public/favicon.ico' //ADD IMAGE - CURRENTLY HARDCODED IN ingredientCard FILE
        },
        {
          id: 2,
          name: 'Sourdough',
          image: '"../views/favicon.ico"' //ADD IMAGE
        },
        {
          id: 3,
          name: 'Bagels',
          image: '../../public/favicon.ico' //ADD IMAGE
        },
        {
          id: 4,
          name: 'Sausge Roll',
          image: '../../public/favicon.ico' //ADD IMAGE
        },
        {
          id: 5,
          name: 'Chickpeas',
          image: '../../public/favicon.ico' //ADD IMAGE
        }
      ]
      }
    },
    methods: {

    search (category) {
        this.active = !this.active
        document.getElementById('categoryButton').innerHTML = category;

      //The below is text data to test the formatting of the table.
      //When connecting the backend, replace with API Call to get ingredients by category.
      //Set resultsArray from query to testNames (rename for final) to run

      //This clears the array so that when a new category is searched the old items are removed from the DOM
        this.testNames = [];

        //Pushing items to an array will allow them to be added to the DOM after the component has alrady rendered.
        //Documentation here: https://vuejs.org/guide/essentials/list.html
        this.testNames.push({
          id: 4,
          name: "Toast",
          image: '../../../src/assets/bred1test.jpg' //ADD IMAGE
        })
        this.testNames.push({
          id: 5,
          name: "Toastier Toast",
          image: '../../../src/assets/bred1test.jpg' //ADD IMAGE
        })
        this.testNames.push({
          id: 6,
          name: "Scones",
          image: '../../../src/assets/bred1test.jpg' //ADD IMAGE
        })
    
      }
    }
  }
</script>

<style>
.card {
  display: inline-block;
  margin: 6px;
}

.ingredientsGrid {
  margin-top: 8px;
}

</style>
