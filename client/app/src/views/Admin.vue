<script setup>
import LogOut from "../components/admin/LogOut.vue";
import ButtonComponent from "../components/homePage/ButtonComponent.vue";
</script>

<template>
  <div class="jumbotron text-center jumbotron-fluid">
    <div class="container">
      <h1 class="display-6">Admin Page</h1>
      <p class="lead"> Please choose an option below:</p>
      <div class="row">
        <div class="col mb-3">
          <RouterLink to="/addRecipe">
            <ButtonComponent label="Add Recipe" />
          </RouterLink>
        </div>
      </div>
      <div class="row">
        <div class="col mb-3">
          <RouterLink to="/HighlightRecipe">
            <ButtonComponent label="Highlight Recipe" />
          </RouterLink>
        </div>
      </div>
      <div class="row">
        <div class="col mb-3">
          <RouterLink to="/removeRecipe">
            <ButtonComponent label="Remove Recipe" />
          </RouterLink>
        </div>
      </div>
      <div class="row">
        <div class="col">
          <LogOut />
        </div>
      </div>
    </div>
  </div>

</template>

<style scoped>

</style>