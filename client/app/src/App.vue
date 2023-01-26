<script setup>
import { RouterLink, RouterView } from "vue-router";
import HelloWorld from "./components/HelloWorld.vue";

</script>

<template>
 <RouterView />
  <header>
    

    <div class="wrapper">
      <nav>

        <RouterLink to="/browse">Browse All Ingredients</RouterLink>
      </nav>

    </div>
  </header>

  <RouterView />
</template>
