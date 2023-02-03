<template>
  <div class="row">
    <div class="col">
      <!-- Dismissable Alert for allergy information -->
      <div id="allergyAlert" class="alert alert-warning alert-dismissible fade show" role="alert">
        <strong>ALLERGY NOTICE: </strong> We cannot guarantee that any of our
        products will not be cross contaminated. For further information
        click:<button type="button" id="button-link" @click="followLink">
          here
        </button>
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  methods: {
    // Method for navigating to the allergy information page
    followLink() {
      this.$router.push({ path: "/allergyPage" });
    },
  },
};
</script>

<style scoped>
#allergyAlert {
  color: #ffffff;
  background-color: #329e63;
}

#button-link {
  background-color: #329e63;
  color: #ffffff;
  border: none;
  text-decoration: underline;
}
</style>
