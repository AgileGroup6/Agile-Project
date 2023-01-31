import { defineStore } from "pinia";
import axios from "axios";
import { useStorage } from '@vueuse/core'


export const useIngridentsStore = defineStore({
  id: "ingredients",
  state: () => ({
    /** @type {string[]} */
    items: [],
    shoppingList: useStorage('shoppingList', [])
  }),
  getters: {
    getItems: () => {
      return this.items;
    }


  },
  actions: {
    addItem(item) {
      const existingItem = this.shoppingList.find((it) => it.name === item.name);
      if (!existingItem)
        this.shoppingList.push(item);
      // doube up items is needed
      else
        return;
    },

    async updateAllIngredients() {
      try {
        const res = await axios.get("https://lgl.caydey.com/api/allIngredients");
        this.items = res.data.data;
      }
      catch (ex) {
        console.log(ex);
      }
    }
  }
});