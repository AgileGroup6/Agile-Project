import axios from "axios";
import { defineStore } from "pinia";
import Cookies from "js-cookie";

export const usePasswordStore = defineStore({
  id: "password",
  state: () => ({
    password: Cookies.get("adminPassword"),
    validPassword: null,
  }),
  actions: {
    getPassword() {
      return this.password;
    },
    logout() {
      this.password = "";
    },
    async isValidPassword() {
      Cookies.set("adminPassword", this.password, {
        expires: 5_000, // expires in 5000 days """permanent"""
        sameSite: "strict",
      });
      if (this.validPassword && this.validPassword === this.password) {
        return true;
      }

      try {
        const res = await axios.post(
          "https://lgl.caydey.com/api/checkAdminPassword",
          { password: this.password }
        );
        if (res.data.success) {
          this.validPassword = this.password;
        }
        return res.data.success;
      } catch (err) {
        return false;
      }
    },
  },
});
