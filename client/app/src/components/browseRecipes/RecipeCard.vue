<!-- Recipe Card for recipes displayed in the browse all recipes page-->
<template>
  <!-- Uses styling as present for browse all ingredients-->
  <div class="card" id="ingredient_card">
    <RecipeImage class="card-img-top" :recipe="curRecipe.name" />
    <div class="card-body">
      <h5 class="card-title">{{ curRecipe.name }}</h5>
      <router-link :to="{ name: 'recipePage', params: { recipe_id: curRecipe.id } }">
        <a href="#" class="btn btn-success">View Recipe</a>
      </router-link>
    </div>
  </div>
</template>

<script setup>
import RecipeImage from "@/components/RecipeImage.vue";
</script>

<script>
export default {
  props: ["curRecipe"],
};
</script>
