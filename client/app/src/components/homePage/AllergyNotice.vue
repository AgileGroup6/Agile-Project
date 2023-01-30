<template>
    <div class="alert" role="alert">
        <strong>ALLERGY NOTICE: </strong> We cannot guarantee that any of our products will not be cross contaminated.
        For further information click: <button type="button" id="button-link" @click="followLink">here</button>
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
.alert {
    background-color: #329E63;
    color: #FFFFFF;
}

#button-link {
    background-color: #329E63;
    color: #FFFFFF;
    outline: none;
    border: none;
    text-decoration: underline;
}

a:link,
a:visited {
    color: #FFFFFF;
    cursor: pointer;
}
</style>
