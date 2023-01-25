<!-- View created for the browse view -->

<template>
  <div class="browse">
    <h1>Browse Store</h1>
  </div>

 <v-btn block @click="toggle"> Browse by Category </v-btn>
  <div v-if="active">
    <tr>
      <button @click="search(1)"> Organic </button>
    </tr>
    <tr>
      <button @click="search(2)"> Wheat </button>
    </tr>
    <tr>
      <button @click="search(3)"> Banana </button>
    </tr>
  </div>

</template>

<script>
  export default {
    data () {
      return {
        active: false
      }
    },
    methods: {
      toggle () {
        this.active = !this.active
      },

      search (category) {
        this.active = !this.active
        console.log(category);
      }
    }
  }
</script>


<style scoped>
@media (min-width: 1024px) {
  .browse {
    min-height: 100vh;
    display: flex;
    place-items: flex-start;
    left: 50%;
    flex-wrap: wrap;
    
    
  }
}



</style>
