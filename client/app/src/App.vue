<script setup>
import { RouterLink, RouterView } from "vue-router";


</script>

<template>

  <header>
    <nav class="navbar navbar-expand-lg navbar-light bg-light d-flex justify-content-center">
  
      <a class="navbar-brand" href="#">
        <div class="row">
          <div class="col-3 align-self-center">
            <RouterLink to='/'>
            <img src="@/assets/logo.webp"  alt="" width="200">
            </RouterLink>
          </div>
        </div>
        
        
      </a>
  </nav>

</header>

  <RouterView />
</template>

<style>
#homeRoute{
  
  height: 10vw;
}
</style>
