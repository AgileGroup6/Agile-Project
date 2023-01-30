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
import ButtonComponent from "@/components/homePage/ButtonComponent.vue";
// import ListItem from "@/components/homePage/ListItem.vue";
import ShoppingList from "@/components/homePage/ShoppingList.vue";
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