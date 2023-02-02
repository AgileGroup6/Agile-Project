<template>
  <!-- v for here  -->
  <div v-for="(recipe, index) in highlightedRecipes" class="carousel-item" :class="{ 'active': index === 1 }">

    <div class="card text-center border-0 shadow p-3 mb-5 bg-white rounded" style="left:15px;width: 95%">

      <div class="alert alert-success " role="alert">
        Recommended by us!
      </div>

      <img class="card-img-top" src="@/assets/recipe1.jpg" alt="Card image cap">
      <div class="card-body">
        <h5 class="card-title">{{ recipe.name }}</h5>
        <router-link :to="{ name: 'recipePage', params: { recipe_id: recipe.id } }">
          <a href="#" class="btn btn-success">View Recipe</a>
        </router-link>
      </div>
    </div>
  </div>
</template>

<script>
import axios from 'axios';
import { CLIENT_ID } from '../../config';

export default {
  props: ['highlightedRecipes'],
  data() {
    return {
      imageUrls: {}
    }
  }
}
</script>

<style scoped>
#favouriteBadge {
  height: 30px;
  position: absolute;
  top: 5px;
  left: 5px;
}
</style>