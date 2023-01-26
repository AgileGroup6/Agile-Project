<script setup>
import { RouterLink, RouterView } from "vue-router";

</script>

<template>
  <header>
    

    <nav>
      <img id="homeRoute" src="./assets/home.png" alt="">
    </nav>
  </header>

  <RouterView />
</template>

<style>
#homeRoute{
  
  height: 10vw;
}
</style>
