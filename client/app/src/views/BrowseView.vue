<!-- View created for the browse view -->
<!-- @Authors Caleb, Chris -->


<template>
  <div class ="container d-flex justify-content-center align-item-center" >
    <div class="browse">
      <h1>Browse Store</h1>
    </div>
</div>
    <div class="dropdown-center">
      <div class = "row" >
    <button class="btn btn-light dropdown-toggle" type="button" id="categoryButton" data-bs-toggle="dropdown" aria-expanded="false">
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
<div class = "container overflow-auto" id = "cardContainer">
  <div class = "row" id = "row-cards">

    <div class = "col" id = "col-left">
      <!--The array is sliced in two so that the items are not added to just one column and are instead added evenly across both of them-->
      <card v-for="(item, index) in testNames.slice(testNames.length/2)"
          :key="item.id" 
          :ingredientName="item.ingredientName"
          :image="item.image"
      /> 
    </div>

    <div class = "col" id = "col-right">
      <card v-for="(item, index) in testNames.slice(0, testNames.length/2)"
          :key="item.id" 
          :ingredientName="item.ingredientName"
          :image="item.image"
      /> 
    </div>

  </div>
</div>
  

</template>

<script>

  import card from '../components/browseAll/ingredientCard.vue';

  export default {

    components: {
        card,
      },
    data () {
      
      return {
        active: false,
        range: 0,
        testNames: [ {
          id: 1,
          ingredientName: 'Baguette',
          image: '../../public/favicon.ico' //ADD IMAGE - CURRENTLY HARDCODED IN ingredientCard FILE
        },
        {
          id: 2,
          ingredientName: 'Sourdough',
          image: '"../views/favicon.ico"' //ADD IMAGE
        },
        {
          id: 3,
          ingredientName: 'Bagels',
          image: '../../public/favicon.ico' //ADD IMAGE
        }]
      }
    },
    methods: {
      toggle () {
        this.active = !this.active
      },

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
          ingredientName: "Toast",
          image: '../../public/favicon.ico' //ADD IMAGE
        })
        this.testNames.push({
          id: 5,
          ingredientName: "Toastier Toast",
          image: '../../public/favicon.ico' //ADD IMAGE
        })
        this.testNames.push({
          id: 6,
          ingredientName: "Scones",
          image: '../../public/favicon.ico' //ADD IMAGE
        })
    
      }
    }
  }
</script>


<style scoped>
@media (min-width: 1024px) {
  .browse {
    min-height: 100vh;
    display: flex;
    place-items: flex-start;
    flex-direction: column;
    
  }
}



</style>
