<template>
    <div class="card" id="ingredient_card">
        <img class="card-img-top" src="@/assets/recipe1.jpg" alt="Card image cap">
        <div class="card-body">
            <h5 class="card-title"> {{ curRecipe.name }} </h5>
            <button class="btn btn-success">View Recipe</button>
        </div>
    </div>
</template>

<script>
export default {
    props: ['curRecipe'],
}

</script>

