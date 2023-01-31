
import axios from "axios";
import { defineStore } from "pinia";



export const useRecipestore = defineStore({
  id: "recipe",
  state: () => ({
    /** @type {string[]} */
    items: [],
    RecipeList: []
  }),
  getters: {
    getItems: () => {
      return this.items;
    }
  },
  actions: {


    async updateAllRecipes() {
      try {
        const res = await axios.get("https://lgl.caydey.com/api/allRecipes");
        this.items = res.data.data;
      }
      catch (ex) {
        console.log(ex);
      }
    },
    getHighlightedItems() {
      return this.items.filter((item) => item.highlighted === true)
    }
  }
});