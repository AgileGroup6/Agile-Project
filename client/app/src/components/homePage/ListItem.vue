<template>
    <div>
        <ul class="list-group list-group-vertical">
            <li class="list-group-item shadow bg-white rounded" v-for="item in ingredients" :key="item"> {{ item.ing }} </li>
        </ul>
    </div>
</template>
<script>
export default {
   props : {
    ingredients :{ 
        type: Array,
        default : ()=>[{ ing: 'Salt' }, { ing: 'Pepper' }]
    }
   }
}
</script>
<style lang="">
    
</style>