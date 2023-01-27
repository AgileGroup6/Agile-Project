<template>
  <div class="container">



    <!-- search ingredients -->
    <div class="row">
      <div class="col mt-2">
        <!-- <IngredientSearch /> -->
        <!-- <ListItem :ingredients="shoppingList"/> -->

        <!-- <form class="form-inline">
            <input class="form-control mr-sm-2" id = "search" type="search" placeholder="Search Ingredients" aria-label="Search Ingredients">
        </form> -->

        <div class="input-group mb-3">
          <input type="text" class="form-control" id="search" placeholder="Enter Ingredient"
            aria-label="Recipient's username" aria-describedby="button-addon2">
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
      shoppingList: [{ ing: 'Curry Powder' }, { ing: 'Pepper' }],
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
// import ListItem from "@/components/homePage/ListItem.vue";
import ShoppingList from "@/components/homePage/ShoppingList.vue";
</script>

<style scoped>
img {
  height: 120px;
}
</style>