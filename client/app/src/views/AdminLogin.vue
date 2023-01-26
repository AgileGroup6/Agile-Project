<template>
  <div class="container d-flex justify-content-center h-100">
    <form class="login-form justfiy-content-center">
      <h1 class="text-center">Admin Login</h1>
      <p>Please enter your login details to access the admin account.</p>
      <div class="form-group">
        <label class="left-text" for="username">Username</label>
        <input v-model="usernameLogin" class="form-control" type="text" name="username" placeholder="Username" required>
      </div>
      <div class="form-group">
        <label class="left-text" for="password">Password</label>
        <input v-model="passwordLogin" class="form-control" type=password name="password" placeholder="Password"
          required>
      </div>
      <div class="row mt-3">
        <div class="col text-center">
          <button @click="doLogin" id="button-continue">Continue</button>
        </div>
      </div>
    </form>
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
        this.$router.push({ path: '/addRecipe' })
      }
    },
  }
}
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