<template>
  <div class="jumbotron jumbotron-fluid text-center">
    <div class="container">
      <h1 class="display-6 mb-3">Browse Store</h1>
      <button
        class="btn btn-success dropdown-toggle"
        type="button"
        id="categoryButton"
        data-bs-toggle="dropdown"
        aria-expanded="false"
      >
        Browse by Category
      </button>
      <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton">
        <li>
          <a class="dropdown-item text-center" href="#" @click="search('All')"
            >All</a
          >
        </li>
        <li v-for="category in store.getCategories()" :key="category">
          <a
            class="dropdown-item text-center"
            href="#"
            @click="search(category)"
            >{{ category }}</a
          >
        </li>
      </ul>
    </div>
    <div class="ingredientsGrid">
      <!--THE KEY VAR IS ACTUALLY IMPORTANT! DO NOT DELETE. USED TO FORCE RE-RENDER OF CARD COMPONENTS -->
      <ingredientCard
        v-for="item in ingredientsInCategory"
        class="card"
        :key="item.tags"
        :ingredientArray="item"
      />
    </div>
  </div>
</template>
<script setup>
import { useIngridentsStore } from "../stores/ingridentsStore.js";
import ingredientCard from "../components/browseAll/ingredientCard.vue";
</script>

<script>
const store = useIngridentsStore();
export default {
  components: {
    ingredientCard,
  },
  data() {
    return {
      ingredientsInCategory: [],
    };
  },
  methods: {
    search(category) {
      this.active = !this.active;
      document.getElementById("categoryButton").innerHTML = category;

      //The below is text data to test the formatting of the table.
      //When connecting the backend, replace with API Call to get ingredients by category.
      //Set resultsArray from query to ingredientsInCategory to run

      //This clears the array so that when a new category is searched the old items are removed from the DOM
      this.ingredientsInCategory = [];

      //Pushing items to an array will allow them to be added to the DOM after the component has alrady rendered.
      //Documentation here: https://vuejs.org/guide/essentials/list.html
      if (category === "All") {
        this.displayAll();
      }
      for (let i = 0; i < store.items.length; i++) {
        if (store.items[i].category == category) {
          this.ingredientsInCategory.push(store.items[i]);
        }
      }
    },
    displayAll() {
      for (let i = 0; i < store.items.length; i++) {
        this.ingredientsInCategory.push(store.items[i]);
      }
    },
  },
  //This displays all ingredients on load
  beforeMount() {
    this.displayAll();
    //This scrolls to the top of the page, sometimes it was placing the scroll at the bottom on load, this fixes that
    window.scrollTo(0, 0);
  },
};
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
