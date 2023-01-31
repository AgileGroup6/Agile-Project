<template>
    <button id="thebut" type="button" class="btn btn-success mt-2" @click="value = item; doOnClick">{{ label }}</button>
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
    },
    data() {
    return { value: 'I am the child.' };
  },
  mounted() {
    // Pass a value to the parent through the function
    this.doOnClick(this.value);
  }
}
</script>

<style scoped>
#thebut {
    width: 60%;
}
</style>