import { setActivePinia, createPinia } from "pinia";
import { useIngridentsStore } from "../stores/ingridentsStore.js";

describe("IngridentsStore Tests", () => {
    beforeEach(async () => {
        setActivePinia(createPinia());
        const store = useIngridentsStore();
        await store.updateAllIngredients();
        expect(store.items).not.toBeNull();
      });
  test("Fetching Ingridents ", () => {
    const store = useIngridentsStore();
    store
      .updateAllIngredients()
      .then(() => {
        console.log(store.items);
        expect(store.items).not.toHaveLength(0);
      })
      .catch((ex) => {
        console.log(ex);
      });
  });
  test("Getting Catagories", () => {
    
    const store = useIngridentsStore();
    let catagories = store.getCategories();
    console.log(store.items);
    expect(catagories).not.toHaveLength(0);
  });
  test("Adding things to shopping list", () => {
    const store = useIngridentsStore();
    const item = store.items[0];
    store.addItem(item);
    console.log(store.shoppingList)
    expect(store.shoppingList[0]).toBe(item);
    store.shoppingList = [];
  });
});
