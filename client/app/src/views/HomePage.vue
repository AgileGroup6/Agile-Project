<template>
  <!-- search ingredients -->
  <div class="row">
    <div class="col-12 mt-2">

      <div class="input-group mb-3">

        <input type="text" class="form-control" id="search" placeholder="Enter Ingredient">

        <button @click="setIngredient()" class="btn btn-success" type="button" id="button-addon2">Search</button>

      </div>
    </div>
  </div>

  <!-- shopping list -->
  <div class="row">
    <div class="col">
      <ShoppingList :searchResult="searchedIng" />
    </div>
  </div>

  <!-- large buttons -->
  <div class="row mt-3">
    <RouterLink to="/browse">
      <ButtonComponent label="Browse All" :doOnClick="testFunction" />
    </RouterLink>
  </div>

  <div class="row mt-3">
    <RouterLink to="/browse">
      <ButtonComponent label="Featured Recipes" :doOnClick="testFunction" />
    </RouterLink>
  </div>
</template>

<script>
export default {


components: {
  ShoppingList,
},

data() {
      return {
          shoppingList : [{ name: 'Curry Powder' }, { name: 'Pepper' }],
          event: {
             search:''
          },
          searchedIng: " ",
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
import ButtonComponent from "@/components/homePage/ButtonComponent.vue";
import ListItem from "../components/homePage/ListItem.vue";
import ShoppingList from "@/components/homePage/ShoppingList.vue";
import {useIngridentsStore} from "../stores/ingridentsStore";

const store = useIngridentsStore(); 

const res = await store.updateAllIngredients(); 

function SearchForIngridents(searchVal){

  if(searchVal)
    return store.items.filter(item => item.name.toLowerCase().includes(searchVal.toLowerCase()));
  
  return []
}

// this is to empty the array later 
function EmptyShoppingCart(){
  if(store.shoppingList)
    store.shoppingList = []; 
}
</script>

<style scoped>
img {
  height: 120px;
}

.input-group {
  width: 50vw;
  margin: 0 auto;
  float: none;
  margin-bottom: 10px;
  width: 50vw;
}
</style>