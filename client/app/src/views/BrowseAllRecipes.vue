<template>
    <div class="jumbotron jumbotron-fluid text-center">
        <div class="container">
            <h1 class="display-6 mb-3">Browse Recipes</h1>

        </div>
        <!-- Uses styling as present for browse all ingredients-->
        <div class="ingredientsGrid">
            <RecipeCard v-for="recipe in recStore.items" class="card" :key="recipe.id" :curRecipe="recipe" />
        </div>
    </div>
</template>
<script setup>
import { useRecipestore } from "../stores/RecipeStore"
import RecipeCard from '../components/browseRecipes/RecipeCard.vue';

</script>

<script>
const recStore = useRecipestore();
export default {
    components: {
        RecipeCard,
    }
}
</script>

<style scoped>
.card {
    display: inline-block;
    margin-right: 8px;
    margin-bottom: 8px;
}

.ingredientsGrid {
    margin-top: 20px;
}
</style>
