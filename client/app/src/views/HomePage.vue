<template>
  <div class="container">

      


      <div class="row">
          <div class="col mt-2">
              <IngredientSearch />
              <ListItem :ingredients="shoppingList"/>
          </div>
        </div>

      
      <div class="row mt-3">
          <div class="col mt-2">
            <RouterLink to="/browse">
            <ButtonComponent label="Browse All" :doOnClick="testFunction"/>     
            </RouterLink>
          </div>
      </div>

      <div class="row mt-3">
        <div class="col">
          <ButtonComponent  label="Featured Recipes" :doOnClick="testFunction"/>
        </div>
      </div>
      
     

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

<style scoped>
img {
  height: 120px;
}
</style>