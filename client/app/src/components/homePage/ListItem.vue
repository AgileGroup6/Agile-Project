<template>
  <div>
    <ul class="list-group list-group-vertical">
      <!-- Loop through ingredients array and display each item name -->
      <li class="list-group-item shadow bg-white rounded" v-for="item in ingredients" :key="item"
        @click="addItemToCart(item)">
        {{ item.name }}
      </li>
    </ul>
  </div>
</template>
<script>
export default {
  //Prop for ingredients array
  props: {
    ingredients: {
      type: Array,
      default: () => [{ name: "Salt" }, { name: "Pepper" }],
    },
  },
};
</script>
<script setup>
import { useIngridentsStore } from "../../stores/ingridentsStore.js";

const store = useIngridentsStore();

function addItemToCart(item) {
  if (!item) return;
  store.addItem(item);
}
</script>
<style lang=""></style>
