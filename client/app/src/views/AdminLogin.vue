<template>
  <div class="jumbotron jumbotron-fluid">
    <div class="container">
      <h1 class="display-6 text-center">Admin Login</h1>
      <p class="lead text-center">
        Please enter your login details to access the admin account.
      </p>
      <div class="form-group">
        <label class="left-text" for="password">Password</label>
        <input v-model="passwordLogin" class="form-control" type="password" name="password" placeholder="Password"
          required />
      </div>
      <div class="row mt-3">
        <!-- Button to login and take you to the next page -->
        <div class="col text-center">
          <ButtonComponent label="Continue" @click="doLogin" />
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import { usePasswordStore } from "../stores/passwordStore";
const store = usePasswordStore();
export default {
  data() {
    return {
      usernameLogin: "",
      passwordLogin: "",
      emptyFields: false,
    };
  },
  // Check if valid password on component mount
  mounted() {
    store.isValidPassword().then((valid) => {
      if (valid) {
        this.$router.push("/admin");
      }
    });
  },
  methods: {
    doLogin() {
      if (this.passwordLogin) {
        store.password = this.passwordLogin;
        // Assign password value to store
        store.isValidPassword().then((valid) => {
          if (valid) {
            this.$router.push("/admin");
          }
        });
      }
    },
  },
};
</script>

<script setup>
import ButtonComponent from "../components/homePage/ButtonComponent.vue";
</script>

<style scoped>
.form-control {
  border: 1px solid #000000;
}

.left-text {
  font-size: 16px;
  font-weight: 600;
  color: #191d23;
}
</style>
