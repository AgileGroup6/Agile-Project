<template>
  <img :src="imageLocation" :alt="recipe" />
</template>

<script>
export default {
  props: ["recipe"],
  data() {
    return {
      imageLocation: `https://lgl.caydey.com/recipeImages/${this.recipe}.jpg`,
    };
  },
};
</script>
