<template>
    <div class="carousel-item active">

        <span id="favouriteBadge" class="badge bg-success">
            <h5>Our favourite recipe this week!</h5>
        </span>
        <img class="d-block w-100 h-100 " src="@/assets/recipe1.jpg" alt="First slide">
        <div class="carousel-caption d-none d-md-block">
            <h5>Test</h5>
            <p>Test</p>
        </div>
    </div>

</template>

<script>
export default {

}
</script>

<style scoped>
#favouriteBadge {
    height: 30px;
    position: absolute;
    top: 5px;
    left: 5px;
}
</style>