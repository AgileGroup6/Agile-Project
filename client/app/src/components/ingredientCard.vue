<template>
    <div id = 'ingredient_card'>
        <h3> {{ingredientName}} </h3>
        <button @click="addToCart()">Add to cart</button>
    </div>
</template>
<script> 


function addToCart(){
    console.log("yeet");
}

export default {
    props: ['ingredientName'],
    
    methods: {
        addToCart(){
        console.log("yeet");
        }
    }

}


</script>