<template>
  <div class="card" id="ingredient_card">
    <img
      class="card-img-top"
      src="../../../src/assets/bred1test.jpg"
      alt="Card image cap"
    />
    <div class="card-body">
      <h5 class="card-title">{{ ingredientArray.name }}</h5>
      <!-- Because we have no id var in the json for ingredients, I use the name as the ID instead to change the button to added-->
      <button
        class="btn btn-success"
        v-bind:id="ingredientArray.name"
        @click="addToCart(ingredientArray)"
      >
        <div>Add to Shopping List</div>
      </button>
    </div>
  </div>
</template>

<script>
import { useIngridentsStore } from "../../stores/ingridentsStore.js";

const store = useIngridentsStore();
export default {
  //Uses view properties to fill the cards with their relevant fields

  props: ["ingredientArray"],

  data() {
    return {
      btnID: this.ingredientArray.name,
    };
  },
  methods: {
    addToCart(item) {
      store.addItem(item);
      document.getElementById(item.name).innerText = "Added!";

      //console.log(store.categories);
    },
  },
  mounted() {
    document.getElementById(this.btnID).innerText = "Add to Shopping List";
  },
};
</script>
