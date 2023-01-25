<template>
    <div class="container">

        <div class="row">
            <div class="col">
                <img src="../assets/logo.webp" alt="">
            </div>
        </div>


        <div class="row">
            <div class="col mt-2">
                <IngredientSearch />
            </div>
        </div>

        <ButtonComponent  label="Brouse all" :doOnClick="testFunction"/>

    </div>
</template>

<script>
export default {
  methods: {
    testFunction: function () {
      console.log('test clicked')
    }
  }
}
</script>

<script setup>
import IngredientSearch from "../components/home/IngredientSearch.vue";
import ButtonComponent from "@/components/home/ButtonComponent.vue";
</script>

<style >
img {
    height: 120px;
}
</style>