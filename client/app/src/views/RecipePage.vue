<template>
    <div class="card container" style="background-color: #edffed;">
        <div class="card-vertical">
            <div class="img-square-wrapper">
                <img class="recipe-img" src="../../src/assets/bred1test.jpg" alt="Card image cap">
            </div>
            <div class="card-body">

                <div style="float: left;">
                    <u><h1 class="card-title">{{ title }}</h1></u>
                </div>

                <div style="text-align: right;">
                    <h1>Serves {{ serves }}</h1>
                </div>
                    
                <br>
                <h3 class="card-title">Ingredients:</h3>
                <div class="measurement card-text">

                    <div class="singleMeasurement" v-for="measurement in measurements" :key="measurement.ingredient.name">
                        <div style="float: left; width: 200px;">
                            {{ measurement.ingredient.name }}
                        </div>

                        <div>
                            {{ measurement.amount }}
                        </div>
                    </div>
                    <h3 class="card-title">Instructions:</h3>
                    <textarea style="background-color: #edffed; border-color: transparent;">{{ instructions }}</textarea>
                </div>
            </div>
        </div>
    </div>
</template>
<script>
    export default {
        data() {
            return {
                title: "Pancakes",
                measurements: [{
                    ingredient: {
                        name: "milk",
                        store_has: true,
                        tags: ['vegan']
                    },
                    amount: '1 Litre'
                }, {
                    ingredient: {
                        name: "water",
                        store_has: true,
                        tags: ['vegan']
                    },
                    amount: '20 Litre'
                }, {
                    ingredient: {
                        name: "ink",
                        store_has: true,
                        tags: ['vegan']
                    },
                    amount: '1 gram'
                }, ],
                instructions: "contents\nyou first do this\n then do this",
                serves: 2
            }
        },
        methods: {}
    }
</script>
<style>
    .card {
        border-width: 2px;
        border-color: black;
    }

    .card-horizontal {
        display: flex;
        flex: 1 1 auto;
    }
    
    .img-square-wrapper{
        padding-top: 1rem;
    }

    .recipe-img{
        border: 2px solid #000;
        border-radius: 5px;
    }

</style>