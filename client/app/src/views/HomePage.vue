<template>
  <div class="container">

      <div class="row">
          <div class="col">
              <img src="../assets/logo.webp" alt="">
          </div>
      </div>


      <div class="row">
          <div class="col mt-2">
              <IngredientSearch />
              <ListItem :ingredients="shoppingList"/>
          </div>
      </div>

      <ButtonComponent  label="Browse all" :doOnClick="testFunction"/>

  </div>
</template>

<script>

export default {

  data() {
        return {
            shoppingList : [{ ing: 'Curry Powder' }, { ing: 'Pepper' }],
        }
    
},

methods: {
  testFunction: function () {
    console.log('test clicked')
  }
}
}
</script>

<script setup>
import IngredientSearch from "../components/homePage/IngredientSearch.vue";
import ButtonComponent from "@/components/homePage/ButtonComponent.vue";
import ListItem from "../components/homePage/ListItem.vue";
</script>

<style >
img {
  height: 120px;
}
</style>