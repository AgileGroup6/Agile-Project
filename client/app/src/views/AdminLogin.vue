<script setup>
import Username from "../components/admin/Username.vue";
import Password from "../components/admin/Password.vue";
</script>

<template>
  <body>
      <title>Admin-Login</title>
      <header>
        <img alt="Little Green Logo" class="logo" src="https://static.overlay-tech.com/assets/eda3f67d-06b8-41cb-9619-8eb0e8dd9c04.png" />
        <h1>Admin Login</h1>
        <p class="subtitle"> Please enter your login details to access the admin account. </p>
      </header>

      <form>
        <Username />
        <Password />
        <button type="button" v-on:click="login()" id="button-continue">Continue</button>
      </form>
  </body>
</template>

<script>
    // export default {
    //     name: 'Login',
    //     data() {
    //         return {
    //             input: {
    //                 username: "",
    //                 password: ""
    //             }
    //         }
    //     },
    //     methods: {
    //         login() {
    //             if(this.input.username != "" && this.input.password != "") {
    //                 // This should actually be an api call not a check against this.$parent.mockAccount
    //                 if(this.input.username == this.$parent.mockAccount.username && this.input.password == this.$parent.mockAccount.password) {
    //                     this.$emit("authenticated", true);
    //                     this.$router.replace({ name: "Secure" });
    //                 } else {
    //                     console.log("The username and / or password is incorrect");
    //                 }
    //             } else {
    //                 console.log("A username and password must be present");
    //             }
    //         }
    //     }
    // }
</script>
<style>

  * {
    font-family: "arial";
    background-color: #FFFFFF;
    width: 100%;
  }

  body {
    background-color: #FFFFFF;
    padding: 24px 24px 350px;
    /* display: flex; */
    flex-direction: column;
    align-items: center;
  }

  .logo {
    width: 175px;
    height: 110px;
    margin-bottom: 24px;
    margin-left: auto;
    margin-right: auto;
  }

  header {
    margin-bottom: 24px;
    display: flex;
    flex-direction: column;
    align-items: flex-start;
    width: 350px;
  }

  h1 {
    font-weight: 700;
    line-height: normal;
    color: #191D23;
    align-self: stretch;
    margin-bottom: 8px;
  }

  .subtitle {
    font-size: 14px;
    font-weight: 400;
    line-height: normal;
    color: #64748B;
    align-self: stretch;
  }

  #button-continue {
    background-color: #329E63;
    border-radius: 4px;
    padding: 6px 12px;
    display: flex;
    align-items: center;
    justify-content: center;
    width: 291px;
    font-size: 16px;
    font-weight: 600;
    line-height: normal;
    color: #FFFFFF;
    text-align: center;
    transition-duration: 0.4s;
  }

  #button-continue:hover {
    box-shadow: 0 12px 16px 0 rgba(0, 0, 0, 0.24), 0 17px 50px 0 rgba(0, 0, 0, 0.19);
  }

  span {
    display: block;
    margin-left: 20px;
    color: red;
    font-style: italic;
  }
</style>