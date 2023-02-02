<template>
  <!-- v for here  -->
  <div v-for="recipe in highlightedRecipes" class="carousel-item active">

    <div class="card text-center border-0 shadow p-3 mb-5 bg-white rounded" style="left:15px;width: 95%">

      <div class="alert alert-success " role="alert">
        Recommended by us!
      </div>

      <img class="card-img-top" :src="getImageUrl(recipe.name)" alt="Card image cap">
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
  },
  methods: {
    getImageUrl(dishName) {
      if (!this.imageUrls[dishName]) {
        axios.get(`https://api.unsplash.com/search/photos?query=${dishName}&client_id=${CLIENT_ID}`)
          .then(response => {
            this.imageUrls[dishName] = response.data.results[0].urls.regular;
          })
          .catch(error => {
            console.error(error);
          });
      }
      return this.imageUrls[dishName];
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

.card-img-top {
  width: 100%;
  height: 70vw;
  max-height: 600px;
  object-fit: cover;
}
</style>