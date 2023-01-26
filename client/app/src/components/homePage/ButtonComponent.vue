<template>
    <button type="button" class="btn btn-success" @click="doOnClick">{{ label }}</button>
</template>
<script>
export default {
    props: {
        label:{
            type: String,
            default: 'Button'
        },
        doOnClick:{
            type: Function
        }
    }
}
</script>

<style>

button{
    width:90vw;
    height:35vw;
}
    
</style>