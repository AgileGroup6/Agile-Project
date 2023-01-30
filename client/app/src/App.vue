<script setup>
import { RouterLink, RouterView } from "vue-router";

import 'https://kit.fontawesome.com/cf35c5647c.js'
</script>


<template>
  
  <header>
    <nav class="navbar navbar-expand-lg navbar-light d-flex justify-content-center">

      <a class="navbar-brand" href="#">
        <div class="row">
          <div class="col-3 align-self-center">
            <RouterLink to='/'>
              <img src="@/assets/logo.webp" alt="" width="200">
            </RouterLink>
          </div>
        </div>


      </a>
    </nav>

  </header>

  <RouterView />
</template>

