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
                                
                                  <!-- Container for the delete button-->
                                  <span class = "clearfix"> 
                                    <button class = "btn" type = "button" @click="removeIngredient(item)"> 
                                        <svg  xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-x-circle" viewBox="0 0 16 16">
                                            <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
                                            <path d="M4.646 4.646a.5.5 0 0 1 .708 0L8 7.293l2.646-2.647a.5.5 0 0 1 .708.708L8.707 8l2.647 2.646a.5.5 0 0 1-.708.708L8 8.707l-2.646 2.647a.5.5 0 0 1-.708-.708L7.293 8 4.646 5.354a.5.5 0 0 1 0-.708z"/>
                                        </svg>
                                    </button>
                                </span>
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
            if(confirm("Are you sure you'd like to clear your shopping list?")){
                this.ingredients.length = 0;
            }
            
            
        },
        removeIngredient(ingredient){
            //if(confirm("Are you sure you'd like to remove this item from your shopping list?")){
            let index = this.ingredients.indexOf(ingredient);
            this.ingredients.splice(index,1);
            //}
        }
    }
}


</script>

<style scoped>
.del {
    float: right;
}
</style>