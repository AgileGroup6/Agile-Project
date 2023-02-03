<template>
  <div class="jumbotron jumbotron-fluid text-center">
    <div class="container">
      <h1 class="display-6 mb-3">Highlight Recipe</h1>
      <p class="lead">
        Select a recipe from the drop-down below to schedule a featured recipe
        for a date of your choice.
      </p>
      <button class="btn btn-success dropdown-toggle" type="button" id="categoryButton" data-bs-toggle="dropdown"
        aria-expanded="false">
        Browse by Category
      </button>
      <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton">
        <!-- Loop through the recipes to display each recipe name in the dropdown -->
        <li v-for="recipe in recipes" :key="recipe.id">
          <a class="dropdown-item" href="#" @click="select(recipe)">{{
            recipe.name
          }}</a>
        </li>
      </ul>
      <!-- Display the selected recipe if a recipe is selected -->
      <div v-if="selectedRecipe">
        <div class="ingredient_card">
          <div class="row mt-4">
            <h3>{{ selectedRecipe.name }}</h3>
          </div>
          <div class="row justify-content-center">
            <div class="col-md-7">
              <RecipeImage :recipe="selectedRecipe.name" />
            </div>
          </div>
          <div class="row justify-content-center mt-4 d-flex">
            <div class="justify-content-center">
              <input type="date" v-model="scheduleStart" />
            </div>
            <div class="justify-content-center">to</div>
            <div class="justify-content-center">
              <input type="date" v-model="scheduleEnd" />
            </div>
            <div class="justify-content-center d-flex mt-3">
              <button class="btn btn-success" id="schedule-button" @click="highlightRecipe">
                Schedule
              </button>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script setup>
import RecipeImage from "@/components/RecipeImage.vue";
</script>

<script>
import axios from "axios";
import { useRecipestore } from "../stores/RecipeStore.js";

const store = useRecipestore();

store.updateAllRecipes();

export default {
  data() {
    return {
      recipes: store.items,
    };
  },
  onMount() {
    console.log("hehrere");
  },
  methods: {
    select(recipe) {
      this.selectedRecipe = recipe;
    },
    highlightRecipe() {
      const id = this.selectedRecipe.id;
      const scheduleStart = this.scheduleStart;
      const scheduleEnd = this.scheduleEnd;

      console.log("post");
      console.log(id);
      // if null return
      console.log(scheduleStart);
      console.log(scheduleEnd);

      // create a JSON object with the id, schedule start and schedule end of the selected recipe
      const json = {
        id: this.selectedRecipe.id,
        scheduleStart: this.scheduleStart,
        scheduleEnd: this.scheduleEnd,
      };
      // send a POST request to the specified URL with the JSON data
      axios
        .post("https://lgl.caydey.com/api/setFeatured", json)
        .then(() => {
          alert("schedules");
        })
        .catch((err) => {
          console.log(err);
          alert("error scheduling message");
        });
    },
  },
};
</script>

<style scoped>

</style>
