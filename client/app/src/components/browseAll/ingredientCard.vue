<template>
    <div class="card" id="ingredient_card">
        <img class="card-img-top" src="../../../src/assets/bred1test.jpg" alt="Card image cap">
        <div class="card-body">
            <h5 class="card-title"> {{ ingredientArray.name }} </h5>
            <button class="btn btn-success" @click="addToCart(ingredientArray)">Add to Shopping List</button>
        </div>
    </div>
</template>


<script>

import { useIngridentsStore } from "../../stores/ingridentsStore.js";

const store = useIngridentsStore();
export default {
    //Uses view properties to fill the cards with their relevant fields

    props: ['ingredientArray'],

    methods: {
        addToCart(item) {
            store.shoppingList.push(item);

            //console.log(store.categories);

        }

    }

}

</script>