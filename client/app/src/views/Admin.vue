<script setup>
import BigButton from "../components/admin/BigButton.vue";
import LogOut from "../components/admin/LogOut.vue";
import ButtonComponent from "../components/homePage/ButtonComponent.vue";

</script>

<template>
  <div class="admin-home">
    <div class="header">
      <h1 class="title">Admin Page</h1>
      <p class="subtitle">
        Please choose an option below
      </p>
    </div>
 
    <RouterLink to="/addRecipe">
    <ButtonComponent label="Add Recipe" />
    </RouterLink>
  
    <ButtonComponent label="Highlight Recipe" />
    <ButtonComponent label="Remove Recipe" />

    <LogOut />

  </div>
</template>
  
<style>
  .admin-home {
    background-color: #FFFFFF;
    padding: 28px 0 0;
    display: flex;
    flex-direction: column;
    align-items: center;
  }
  .header {
    background-color: #FFFFFF;
    padding: 12px 24px 16px;
    display: flex;
    flex-direction: column;
    align-items: flex-start;
  }
  .title {
    font-family: "arial";
    font-size: 36px;
    font-weight: 700;
    line-height: 44px;
    color: #000000;
    margin-bottom: 4px;
    letter-spacing: -0.72px;
  }
  .subtitle {
    font-family: "arial";
    font-size: 16px;
    font-weight: 400;
    line-height: 24px;
    color: #329E63;
  }

  </style>