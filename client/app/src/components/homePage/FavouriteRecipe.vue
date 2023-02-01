<template>
    <!-- v for here  -->
    <div v-for="recipe in highlightedRecipes" class="carousel-item active">

        <div class="card text-center border-0 shadow p-3 mb-5 bg-white rounded" style="left:15px;width: 95%">

            <div class="alert alert-success " role="alert">
                Recommended by us!
            </div>

            <img class="card-img-top" src="@/assets/recipe1.jpg" alt="Card image cap">
            <div class="card-body">
                <h5 class="card-title">{{ recipe.name }}</h5>
                <router-link :to="{ name: 'recipePage', params: { recipe_id: recipe.id } }">
                    <a href="#" class="btn btn-success">View Recipe</a>
                </router-link>
            </div>
        </div>
    </div>
</template>

<script>
export default {
    props: ['highlightedRecipes'],
}
</script>

<style scoped>
#favouriteBadge {
    height: 30px;
    position: absolute;
    top: 5px;
    left: 5px;
}
</style>