<template>
  <div class="jumbotron jumbotron-fluid">
    <div class="container">
      <h1 class="display-6 text-center">Admin Login</h1>
      <p class="lead text-center">Please enter your login details to access the admin account.</p>
      <form class="login-form">
        <div class="form-group">
          <label class="left-text" for="username">Username</label>
          <input v-model="usernameLogin" class="form-control" type="text" name="username" placeholder="Username"
            required>
        </div>
        <div class="form-group">
          <label class="left-text" for="password">Password</label>
          <input v-model="passwordLogin" class="form-control" type=password name="password" placeholder="Password"
            required>
        </div>
        <div class="row mt-3">
          <div class="col text-center">
            <ButtonComponent label="Continue" @click="doLogin" />
          </div>
        </div>
      </form>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      usernameLogin: "",
      passwordLogin: "",
      emptyFields: false
    }
  },

  methods: {
    doLogin() {
      if (this.usernameLogin === "" || this.passwordLogin === "") {
        this.emptyFields = true;
      } else {
        this.$router.push({ path: '/admin' })
      }
    },
  }
}
</script>

<script setup>
import ButtonComponent from "../components/homePage/ButtonComponent.vue";
</script>

<style scoped>
#button-continue {
  background-color: #329E63;
  padding: 6px 12px;
  width: 291px;
  font-size: 16px;
  font-weight: 600;
  color: #FFFFFF;
}

.form-control {
  border-radius: 4px;
  padding: 7px 11px;
  display: flex;
  border: 1px solid #000000;
}

.left-text {
  font-size: 14px;
  font-weight: 600;
  color: #191D23;
}

span {
  display: block;
  margin-left: 20px;
  color: red;
  font-style: italic;
}
</style>