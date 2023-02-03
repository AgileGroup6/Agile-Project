import { defineStore } from "pinia";
import axios from "axios";
import { useStorage } from "@vueuse/core";

export const useIngridentsStore = defineStore({
  id: "ingredients",
  state: () => ({
    items: [],
    categories: [],
    shoppingList: useStorage("shoppingList", []),
  }),
  getters: {
    getItems: () => {
      if (this.item.length > 0) return this.items;

      this.updateAllIngredients()
        .then(() => {
          return this.items;
        })
        .catch((ex) => {
          console.log(ex);
        });
    },
  },
  actions: {
    addItem(item) {
      const existingItem = this.shoppingList.find(
        (it) => it.name === item.name
      );
      if (!existingItem) this.shoppingList.push(item);
      // doube up items is needed
      else return;
    },

    async updateAllIngredients() {
      try {
        const res = await axios.get(
          "https://lgl.caydey.com/api/allIngredients"
        );
        this.items = res.data.data;
      } catch (ex) {
        console.log(ex);
      }
    },

    //goes through each item and adds itd category to the temporary array cat
    // make  a set of cat in categories to remove duplicate categories

    getIts: () => {
      return this.items;
    },
    getCategories() {
      let cat = [];
      if (this.categories.length > 0) return this.categories;

      for (let i = 0; i < this.items.length; i++) {
        cat.push(this.items[i].category);
      }
      this.categories = [...new Set(cat)];

      return this.categories;
    },
  },
});
