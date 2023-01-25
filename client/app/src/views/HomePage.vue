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

    </div>
</template>

<script setup>
import IngredientSearch from "../components/IngredientSearch.vue";
</script>

<style >
img {
    height: 120px;
}
</style>