<script setup>
import { RouterLink, RouterView } from "vue-router";

</script>

<template>
  <header>
    

    <div class="wrapper">
      <nav>

        <RouterLink to="/browse">Browse All Ingredients</RouterLink>
      </nav>

    </div>
  </header>

  <RouterView />
</template>
