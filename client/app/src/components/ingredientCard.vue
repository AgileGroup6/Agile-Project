<template>
    <div class = "container" id = 'ingredient_card'>
        <div class = "row text-center"> 
            <h3> {{ingredientName}} </h3>
        </div>
        
        <div class = "row justify-content-center"> 
            <!-- <img src={{image}}> -->
            <img src = "../views/favicon.ico"> 
        </div>
        <div class = "row justify-content-center" > 
        <button class = "btn btn-light" @click="addToCart()">Add to cart</button>
        </div>

    </div>
</template>
<script> 


function addToCart(){
    console.log("yeet");
}

export default {
    props: ['ingredientName','image'],
    
    methods: {
        addToCart(){
        console.log("yeet");
        }
    }

}


</script>