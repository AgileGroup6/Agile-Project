<template>
    <div class="container">
        <div class="row d-flex justify-content-center">
            <div class="col col-lg-8 col-xl-6">
                <button id="thebut" type="button" class="btn btn-success" @click="doOnClick">{{ label }}</button>
            </div>
        </div>
    </div>
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
#thebut {
    width: 100%;
    height: 100%;
}
</style>