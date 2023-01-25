<!-- View created for the browse view -->


<template>
  <div class="browse">
    <h1>Browse Store</h1>
  </div>

 <button @click="toggle"> Browse by Category </button>
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

  

  <browseResults />
  

</template>

<script>

  import browseResults from "../components/browseResults.vue"
  //import card from "../components/ingredientCard.vue"

  export default {

    components: {
        browseResults,
      },
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
    flex-direction: column;
    
  }
}



</style>
