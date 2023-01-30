<template>

    <button type="button" class="btn btn-success" @click="doOnClick">
        <p class="h2" id="buttonLabel">{{ label }}</p>

    </button>
</template>
<script>
export default {
    props: {
        label: {
            type: String,
            default: 'Button'
        },
        doOnClick: {
            type: Function
        }
    }
}
</script>

<style scoped>
button {
    width: 40vw;
    height: 15vw;
}

#buttonLabel {
    padding-top: 1vw;
    font-size: 3vw;
}
</style>