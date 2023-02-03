<template>
  <div>
    <!-- v-for directive used to loop through the recommendedRecipes array and display each recipe -->
    <div v-for="recipe in recommendedRecipes" :key="recipe.recipe_id" class="carousel-item">
      <!-- Main container for each recipe -->
      <div class="card text-center border-0 shadow p-3 mb-5 bg-white rounded" style="left: 15px; width: 95%">
        <div class="alert alert-dark" role="alert">
          Based on your shopping list
        </div>
        <RecipeImage class="card-img-top" :recipe="recipe.name" />
        <div class="card-body">
          <h5 class="card-title">{{ recipe.name }}</h5>
          <router-link :to="{ name: 'recipePage', params: { recipe_id: recipe.id } }">
            <a href="#" class="btn btn-success">View Recipe</a>
          </router-link>
        </div>
      </div>
    </div>
  </div>
</template>

<script setup>
import RecipeImage from "@/components/RecipeImage.vue";
</script>

<script>
export default {
  props: ["recommendedRecipes"],
};
</script>
