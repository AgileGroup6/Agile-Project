<template>
    <div class="row">
        <div class="col">
            <div id="allergyAlert" class="alert alert-warning alert-dismissible fade show" role="alert">
                <strong>ALLERGY NOTICE: </strong> We cannot guarantee that any of our products will not be cross
                contaminated.
                For further information click:
                <a @click="followLink">here</a>
                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
            </div>
        </div>
    </div>


</template>

<script>
export default {
    methods: {
        followLink() {
            this.$router.push({ path: '/allergyPage' })
        }

    }

}
</script>

<style>
#allergyAlert {
    width: 60vw;
    color: #FFFFFF;
    background-color: #329E63;
}
</style>
