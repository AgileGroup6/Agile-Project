<template>
    <div v-for="recipe in recommendedRecipes" class="carousel-item">

        <div class="card text-center border-0 shadow p-3 mb-5 bg-white rounded" style="left:15px;width: 95%">

            <div class="alert alert-dark " role="alert">
                Based on your shopping list
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
    props: ['recommendedRecipes'],


}
</script>