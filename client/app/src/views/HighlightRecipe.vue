<template>
  <div>
    <div class ="container d-flex justify-content-center align-item-center" >
    <div class="Highlight">
      <h1>Highlight Recipe</h1>
    </div>
  </div>

  <div class="dropdown-center">
    <div class = "row" >
      <button class="btn btn-success dropdown-toggle mt-4" type="button" id="categoryButton" data-bs-toggle="dropdown" aria-expanded="false">
        Browse Recipes
      </button>
      <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton">
        <!-- THIS IS CURRENTLY HARD-CODED DATA!!! CHANGE BEFORE FINAL -->
        <li v-for="recipe in recipes" :key="recipe.id">
          <a class="dropdown-item text-center" href="#" @click="select(recipe)">{{recipe.name}}</a>
        </li>
      </ul>
    </div>

    <div v-if="selectedRecipe">
      <div class = "container" id = 'ingredient_card'>
    
    <div class = "row text-center mt-4"> 
        <h3> {{selectedRecipe.name}} </h3>
    </div>
    
    <div class = "row justify-content-center"> 
        <!-- <img src={{image}}> -->
        <!-- HARD CODED IMAGE FOR TESTING! CHANGE BEFORE FINAL -->
        <img src = "../../src/assets/bred1test.jpg"> 
    </div>
    <div class = "row justify-content-center mt-4 align-item-center d-flex" > 
        
            <div class="col-5 justify-content-center d-flex">
            <input type="date" v-model="scheduleStart"> 
            </div>
            <div class="col-2 justify-content-center d-flex">
            to
            </div>
            <div class="col-5 justify-content-center d-flex">
              <input type="date" v-model="scheduleEnd">
            </div>
        
    </div>
    <div class = "row justify-content-center d-flex mt-4">
        <button class = "btn btn-success " @click="highlightRecipe" >Schedule</button>
    </div>
</div>

    
    </div>

  </div>
</div>
</template>
  
<script>
import axios from 'axios'

export default {
  data() {
    return {
      selectedRecipe: "",

      recipes: [
      {
        id: 1,
        name: "watered down bread"
      },
      {
        id: 2,
        name: "ice"
      },
      ],
    };
  },
  methods: {
    select(recipe) {
      this.selectedRecipe = recipe
    },
    highlightRecipe(){
      // this.scheduleStart
      const id = this.selectedRecipe.id
      const scheduleStart = this.scheduleStart
      const scheduleEnd = this.scheduleEnd

      console.log("post")
      console.log(id);
      // if null return
      console.log(scheduleStart);
      console.log(scheduleEnd);

      const json = {
        id: this.selectedRecipe.id,
        scheduleStart: this.scheduleStart,
        scheduleEnd: this.scheduleEnd
      }

      axios.post("https://cloud.caydey.com/api/setFeatured", json).then(() =>{
        alert("schedules")
      }).catch((err) => {
        console.log(err);
        alert("error scheduling message")
      })
      

    }
  },
};
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
