<template>

    <div class="container py-4 h-100">
        <div class="row d-flex justify-content-center align-items-center h-100">

            <div class="col">
                <div class="card">
                    <div class="card-body p-4">

                        <p class="mb-2"><span class="h2 me-2">Shopping List</span> <span
                                class="badge bg-danger">Incomplete</span></p>


                        <ul class="list-group rounded-0">

                            <li class="list-group-item border-0 d-flex ps-0" type="checkbox"
                                v-for="(item, index) in ingredients" :key="item.id">
                                <input class="form-check-input me-3" type="checkbox" value="" aria-label="..." />
                                {{ item.ingredientName }}

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


    props: ['searchResult'],
    watch: {
        searchResult: function () {
            this.ingredients.push({
                id: 4,
                ingredientName: this.searchResult
            })
        }
    },
    data() {
        return {
            ingredients: [],
        }

    },
}


</script>

<style>
.del {
    float: right;
}

.card {
    width: 40vw;
}
</style>