<template>
  <div class="container">
    <!-- search ingredients -->
    <div class="row">
      <div class="col mt-2">

        <div class="row">
          <div class="col mt-2">
              <IngredientSearch v-model="event.search" />
              <ListItem :ingredients="SearchForIngridents(event.search)" @click="event.search=''"/>
          </div>
        </div>
      </div>
    </div>

    <!-- shopping list -->
    <div class="row">
      <div class="col">
        <ShoppingList :ingredients="store.shoppingList" />
      </div>
    </div>

    <!-- large buttons -->
    <div class="row mt-3">
      <div class="col mt-2">
        <RouterLink to="/browse">
          <ButtonComponent label="Browse All" :doOnClick="testFunction" />
        </RouterLink>
      </div>
    </div>

    <div class="row mt-3 mb-3">
      <div class="col">
        <ButtonComponent label="Featured Recipes" :doOnClick="testFunction" />
      </div>
    </div>



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
  },
  setIngredient() {
    this.searchedIng = document.getElementById('search').value;

  }
}
}
</script>

<script setup>
import IngredientSearch from "@/components/homePage/IngredientSearch.vue";
import ButtonComponent from "@/components/homePage/ButtonComponent.vue";
import ListItem from "../components/homePage/ListItem.vue";
import ShoppingList from "@/components/homePage/ShoppingList.vue";
import {useIngridentsStore} from "../stores/ingridentsStore";

const store = useIngridentsStore(); 

const res = await store.updateAllIngredients(); 

function SearchForIngridents(searchVal){

  if(searchVal)
    return store.items.filter(item => item.name.includes(searchVal));
  
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
</style>