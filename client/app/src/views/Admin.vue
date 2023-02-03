<script setup>
import LogOut from "../components/admin/LogOut.vue";
import ButtonComponent from "../components/homePage/ButtonComponent.vue";
</script>

<template>
  <div class="jumbotron text-center jumbotron-fluid">
    <div class="container">
      <h1 class="display-6">Admin Page</h1>
      <p class="lead">Please choose an option below:</p>
      <div class="row">
        <div class="col mb-3">
          <RouterLink to="/addRecipe">
            <ButtonComponent label="Add Recipe" />
          </RouterLink>
        </div>
      </div>
      <div class="row">
        <div class="col mb-3">
          <RouterLink to="/HighlightRecipe">
            <ButtonComponent label="Highlight Recipe" />
          </RouterLink>
        </div>
      </div>
      <div class="row">
        <div class="col mb-3">
          <RouterLink to="/removeRecipe">
            <ButtonComponent label="Remove Recipe" />
          </RouterLink>
        </div>
      </div>
      <div class="row">
        <div class="col">
          <div class="container">
            <div class="row d-flex justify-content-center">
              <div class="col col-lg-8 col-xl-6">
                <button
                  id="logout-but"
                  type="button"
                  class="btn btn-dark"
                  @click="logout"
                >
                  Log out
                </button>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import { usePasswordStore } from "../stores/passwordStore";
const store = usePasswordStore();

export default {
  methods: {
    logout() {
      store.logout();
      this.$router.push("/adminLogin");
    },
  },
  beforeMount() {
    // check valid password, else redirect to login page
    store.isValidPassword().then((valid) => {
      if (!valid) {
        this.$router.push("/adminLogin");
      }
    });
  },
};
</script>
