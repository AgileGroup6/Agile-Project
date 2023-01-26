<template>
  <div class="container">

    <div class="row">
      <div class="col">

        <img alt="Little Green Logo" class="logo"
          src="https://static.overlay-tech.com/assets/eda3f67d-06b8-41cb-9619-8eb0e8dd9c04.png" />
      </div>

      <div class="row">
        <div class="col">
          <h1>Admin Login</h1>
          <p class="sub">Please enter your login details to access the admin account.</p>
        </div>

      </div>
      <form class="login-form">
        <div class="form-group">
          <label class="left-text" for="username">Username</label>
          <input v-model="usernameLogin" class="bar" type="text" name="username" placeholder="Username" required>
        </div>
        <div class="form-group">
          <label class="left-text" for="password">Password</label>
          <input v-model="passwordLogin" class="bar" type=password name="password" placeholder="Password" required>
        </div>
        <div class="row mt-3">
          <div class="col">
            <ButtonComponent label="Continue" :doOnClick="doLogin" />
          </div>
        </div>
      </form>
    </div>
  </div>

  <!-- Form end -->

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

<script setup>
import ButtonComponent from "@/components/homePage/ButtonComponent.vue";
</script>

<!-- <style>

  #button-continue {
    background-color: #329E63;
    font-weight: 600;
    color: #FFFFFF;
    transition-duration: 0.4s;
  }

  #button-continue:hover {
    box-shadow: 0 12px 16px 0 rgba(0, 0, 0, 0.24), 0 17px 50px 0 rgba(0, 0, 0, 0.19);
  }

  .bar {
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
</style> -->