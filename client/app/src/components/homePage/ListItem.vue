<template>
    <div>
        <ul class="list-group list-group-vertical">
            <li class="list-group-item shadow bg-white rounded" v-for="item in ingredients" :key="item" @click="value = item; doOnClick(item)"> {{ item.name }} </li>
        </ul>
    </div>
</template>
<script>
export default {
   props : {
    ingredients :{ 
        type: Array,
        default : ()=>[{ name: 'Salt' }, { name: 'Pepper' }]
    },
    doOnClick: {
            type: Function
        }
   },
   data() {
    return { value: '' };
  },
  mounted() {
    // Pass a value to the parent through the function
    this.doOnClick(this.value);
  }
}
</script>
<script setup>

</script>
<style lang="">
    
</style>