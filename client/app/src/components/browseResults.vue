<script>
    import card from './ingredientCard.vue';
    //import { ingredientName } from './ingredientCard.vue';
    export default{

        // prop: [category],

        components: {
            card
        },
    };

</script>

<!-- Run call to db here to get names of food and fill them in to cards -->

<template>

    
    <div class = "row"> 
        <div class = "col">
            <card ingredientName='corn' /> 
            <card ingredientName='parsley' />
        </div>
        <div class = "col">
            <card ingredientName='kale' />
        </div>
       
    </div>

</template>

<style scoped>

.row {
    display:flex;
}

/* Clear floats after the columns */
.column {
  flex:50%;
  margin:10px;
}

</style>
