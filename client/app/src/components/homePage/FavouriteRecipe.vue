<template>
  <div>
    <div
      v-for="recipe in highlightedRecipes"
      :key="recipe.recipe_id"
      class="carousel-item"
      :class="{ active: index === 1 }"
    >
      <div
        class="card text-center border-0 shadow p-3 mb-5 bg-white rounded"
        style="left: 15px; width: 95%"
      >
        <div class="alert alert-success" role="alert">Recommended by us!</div>

        <RecipeImage :recipe="recipe.name" class="card-img-top" />
        <div class="card-body">
          <h5 class="card-title">{{ recipe.name }}</h5>
          <router-link
            :to="{ name: 'recipePage', params: { recipe_id: recipe.id } }"
          >
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
  props: ["highlightedRecipes"],
  data() {
    return {
      imageUrls: {},
    };
  },
};
</script>

<style scoped>
#favouriteBadge {
  height: 30px;
  position: absolute;
  top: 5px;
  left: 5px;
}
</style>
