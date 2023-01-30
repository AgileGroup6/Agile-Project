<template>
<div>
    <h1>{{ $route.params.recipe_id }}</h1>
    The recipe
</div>

</template>

<script>
export default {

    data() {
        return {
            title: "te",
            measurements: [
                {ingredient: 'Milk', amount: '1 Litre'},
                {ingredient: 'cum', amount: '20 Litre'},
                {ingredient: 'shit powder', amount: '1 gram'},
            ],
            instructions: "contents",
            serves: 2
        }
    },

    methods: {
    }
}

</script>