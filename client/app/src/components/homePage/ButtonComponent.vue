<template>
    <button type="button" class="btn btn-success mt-2" @click="doOnClick">{{ label }}</button>
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

<style scoped>

button{
    width:90vw;
    height:35vw;
}
    
</style>