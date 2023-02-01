<template>

    <div class="container py-4 h-100">
        <div class="row d-flex justify-content-center align-items-center h-100">

            <div class="col col-lg-8 col-xl-6">
                <div class="card rounded">
                    <div class="card-body p-4">
                        <h3 class = "text-center" > Your Shopping List </h3>
                        <ul class="list-group rounded-0">
                            <!-- Show this string if the customer's shopping list is empty-->
                            <p class = "text-center text-muted" v-show="!ingredients.length"> Your shopping list is empty </p>
                            <li class="list-group-item border-0 d-flex ps-0" type="checkbox"
                                :class="{ 'text-danger': !item.store_has }" v-for="item in ingredients" :key="item">
                                <!-- The style tag in the input makes the checkboxes larger, so they are easier to click on mobile-->
                                <input class="form-check-input me-3" style = "width:30px; height:30px" type="checkbox" value="" aria-label="..." />
                                <p class = "pt-2">{{ item.name }}</p>
                                <p v-if="!item.store_has" class="font-weight-light text-end text-muted pt-2 px-1">(item not
                                    available in store)
                                </p>
                           
                            </li>
                        </ul>

                        <button v-show="!!ingredients.length" type="button" class="btn btn-success" @click="clearIngredientList()" >Clear List</button>

                    </div>
                </div>
            </div>
        </div>
    </div>


</template>

<script>
export default {
    props: {
        ingredients: {
            type: Array,
            default: () => [{ name: 'Salt' }, { name: 'Pepper' }]
        }
    },
    methods: {
        clearIngredientList(){
            if(confirm("Are you sure you'd like to clear your shopping list?"))
            this.ingredients.length = 0;
            
        }
    }
}


</script>

<style scoped>
.del {
    float: right;
}
</style>