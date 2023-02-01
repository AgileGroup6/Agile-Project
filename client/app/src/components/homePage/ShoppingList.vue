<template>

    <div class="container py-4 h-100">
        <div class="row d-flex justify-content-center align-items-center h-100">

            <div class="col col-lg-8 col-xl-6">
                <div class="card rounded">
                    <div class="card-body p-4">
                        <ul class="list-group rounded-0">

                            <li class="list-group-item border-0 d-flex ps-0" type="checkbox"
                                :class="{ 'text-danger': !item.store_has }" v-for="item in ingredients" :key="item">
                        
                                <input class="form-check-input me-3" style = "width:30px; height:30px" type="checkbox" value="" aria-label="..." />
                                <p class = "pt-2">{{ item.name }}</p>
                                <p v-if="!item.store_has" class="font-weight-light text-end text-muted pt-2 px-1">(item not
                                    available in store)
                                </p>
                           
                            </li>
                        </ul>
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
    }
}


</script>

<style scoped>
.del {
    float: right;
}
</style>