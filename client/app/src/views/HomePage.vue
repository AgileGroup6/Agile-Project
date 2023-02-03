<template>
  <!-- allergy notice -->
  <div class="container py-4">
    <!-- <div class="row d-flex justify-content-center align-items-center h-100"> -->
    <AllergyNotice />

    <!-- search ingredients -->
    <div class="row">
      <div class="col">
        <IngredientSearch v-model="event.search" @submit.prevent="AddNonStoreIngridents_ShoppingList(event.search)" />
        <ListItem :ingredients="SearchForIngridents(event.search)" @click="event.search = ''" />
      </div>
    </div>

    <!-- shopping list -->
    <div class="row">
      <div class="col">
        <ShoppingList :ingredients="store.shoppingList" />
      </div>
    </div>

    <div class="row justify-content-center">
      <div class="col-xs-7">
        <div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
          <!-- carousel items -->
          <div class="carousel-inner">
            <FavouriteRecipe :highlightedRecipes="recipeStore.getHighlightedItems()" />
            <BasketRecipe :recommendedRecipes="recipeStore.recommendedRecipes" />
          </div>

          <!-- carousel controls -->
          <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls"
            data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden"></span>
          </button>
          <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls"
            data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden"></span>
          </button>
        </div>
      </div>
    </div>

    <!-- cannot center the content -->
    <div class="row mt-3">
      <div class="col">
        <RouterLink to="/browse">
          <ButtonComponent label="Browse All Ingredients" :doOnClick="testFunction" />
        </RouterLink>
      </div>
    </div>
    <div class="row mt-3">
      <div class="col">
        <RouterLink to="/browseRecipes">
          <ButtonComponent label="Browse All Recipes" :doOnClick="testFunction" />
        </RouterLink>
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
      event: {
        search: "",
      },
      searchedIng: " ",
      allRecommendedRecipes: [],
    };
  },
  methods: {
    testFunction: function () {
      console.log("test clicked");
    },
  },
};
</script>

<script setup>
import IngredientSearch from "@/components/homePage/IngredientSearch.vue";
import ButtonComponent from "@/components/homePage/ButtonComponent.vue";
import ListItem from "@/components/homePage/ListItem.vue";
import ShoppingList from "@/components/homePage/ShoppingList.vue";
import AllergyNotice from "@/components/homePage/AllergyNotice.vue";
import FavouriteRecipe from "@/components/homePage/FavouriteRecipe.vue";
import BasketRecipe from "@/components/homePage/BasketRecipe.vue";
import { useIngridentsStore } from "../stores/ingridentsStore";
import { useRecipestore } from "../stores/RecipeStore";
import { watch } from "vue";
import { storeToRefs } from "pinia";

const store = useIngridentsStore();
const recipeStore = useRecipestore();
var { shoppingList } = storeToRefs(store);

let count = 0;

watch(shoppingList, (newShoppingList) => {
  console.log("hello");
  console.log((count = count + 1));
  if (newShoppingList.length > 0)
    recipeStore
      .getRecommendedRecipes(newShoppingList)
      .then(() => {
        console.log(recipeStore.recommendedRecipes);
      })
      .catch((ex) => {
        console.log(ex);
      });
});
// const result = await recipeStore.getRecommendedRecipes(currentShoppingList)

await store.updateAllIngredients();

recipeStore
  .updateAllRecipes()
  .then(() => {
    console.log(recipeStore.getHighlightedItems());
  })
  .catch((ex) => {
    console.log(ex);
  });

function SearchForIngridents(searchVal) {
  if (searchVal)
    return store.items.filter((item) =>
      item.name.toLowerCase().includes(searchVal.toLowerCase())
    );

  return [];
}

// this is to empty the array later
function EmptyShoppingCart() {
  if (store.shoppingList) store.shoppingList = [];
}

function AddNonStoreIngridents_ShoppingList(nonstore) {
  if (!nonstore) return;

  const item = { name: nonstore, category: "", store_has: false, tags: [""] };
  store.addItem(item);
  event.search = "";
}
</script>

<style scoped>
img {
  height: 120px;
}

.carousel {
  max-width: 700px;
  margin: auto;
}
</style>
