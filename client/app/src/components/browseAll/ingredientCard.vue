<template>
    <div class="container" id="ingredient_card" style="width: 18rem;">
        <img class="card-img-top" src="../../../src/assets/bred1test.jpg" alt="Card image cap">
        <div class="card-body">
            <h5 class="card-title"> {{ingredientName}} </h5>
            <button class = "btn btn-success" @click="addToCart()">Add to cart</button>
        </div>
    </div>
</template>


<script> 

function addToCart(){
    
}

export default {
    //Uses view properties to fill the cards with their relevant fields
    props: ['ingredientName','image'],
    
    methods: {
        addToCart(){
       
        }
    }

}

</script>