<!-- @Authors Caleb, Chris -->

<template>
    <div class = "container" id = 'ingredient_card'>
        <div class = "row text-center"> 
            <h3> {{ingredientName}} </h3>
        </div>
        
        <div class = "row justify-content-center"> 
            <!-- <img src={{image}}> -->
            <!-- HARD CODED IMAGE FOR TESTING! CHANGE BEFORE FINAL -->
            <img src = "../../../src/assets/bred1test.jpg"> 
        </div>
        <div class = "row justify-content-center" > 
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