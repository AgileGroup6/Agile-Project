<template>
  <div class="jumbotron jumbotron-fluid text-center">
    <div class="container">
      <h1 class="display-6 mb-3">Remove a recipe</h1>
      <!-- Uses styling as present for browse all ingredients-->
      <div class="ingredientsGrid">
        <RemoveCard v-for="recipe in recStore.items" class="card" :key="recipe.id" :curRecipe="recipe" />
      </div>
    </div>
  </div>
</template>
<script setup>
import { useRecipestore } from "../stores/RecipeStore"
import RemoveCard from '../components/remove/RemoveCard.vue';
const recStore = useRecipestore();
recStore.updateAllRecipes().then(() => {
  console.log(recipeStore.getHighlightedItems())
}).catch((ex) => {
  console.log(ex);
})
</script>

<script>
export default {
  components: {
    RemoveCard,
  }
}
</script>

<style scoped>
.card {
  display: inline-block;
  margin-right: 8px;
  margin-bottom: 8px;
}

.ingredientsGrid {
  margin-top: 20px;
}
</style>