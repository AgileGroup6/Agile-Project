<!-- Recipe Card for recipes displayed in the browse all recipes page-->
<template>
  <!-- Uses styling as present for browse all ingredients-->
  <div class="card" id="ingredient_card">
    <RecipeImage class="card-img-top" :recipe="curRecipe.name" />
    <div class="card-body">
      <h5 class="card-title">{{ curRecipe.name }}</h5>
      <button
        type="button"
        class="btn btn-success"
        id="remove-but"
        @click="removeRecipe(curRecipe.id)"
      >
        Remove
      </button>
    </div>
  </div>
</template>

<script setup>
import RecipeImage from "@/components/RecipeImage.vue";
</script>

<script>
export default {
  props: ["curRecipe"],

  methods: {
    removeRecipe(id) {
      this.$store.dispatch("removeRecipe", id);
    },
  },
};
</script>

<style scoped>
#remove-but {
  background-color: #329e63;
}
</style>
