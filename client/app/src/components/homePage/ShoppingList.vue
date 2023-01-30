<template>

    <div class="card text-">
        <div class="card-body p-4">

            <h4>Shopping List</h4>


            <ul class="list-group rounded-0">

                <li class="list-group-item border-0 d-flex ps-0" type="checkbox" v-for="(item, index) in ingredients"
                    :key="item.id">
                    <input class="form-check-input me-3" type="checkbox" value="" aria-label="..." />
                    {{ item.ingredientName }}

                </li>
            </ul>


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
    margin: 0 auto;
    float: none;
    margin-bottom: 10px;
    width: 50vw;
}
</style>