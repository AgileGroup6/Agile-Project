import { defineStore } from "pinia";
import axios from "axios";
import { useStorage } from '@vueuse/core'


export const useIngridentsStore = defineStore({
    id: "ingredients",
    state: () => ({
      /** @type {string[]} */
      items : [],
      shoppingList: useStorage('shoppingList', [])
    }),
    getters: {
      getItems:() => {
        return this.items;
      }
        
    },
    actions: {
      addItem(item) {
        this.shoppingList.push(item);
      },

      async updateAllIngredients(){
        try {
            const res = await axios.get("https://lgl.caydey.com/api/allIngredients");
            this.items = res.data.data;
        }
        catch(ex){
            console.log(ex); 
        }
      }
    }
  });