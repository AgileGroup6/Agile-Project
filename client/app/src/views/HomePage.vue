<template >
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

<script>
import IngredientSearch from "../components/IngredientSearch.vue";

export default {
    components: {
        IngredientSearch
    }
}

</script>

<style >
img {
    height: 120px;
}
</style>