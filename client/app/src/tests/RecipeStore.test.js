import { setActivePinia, createPinia } from "pinia";
import { useRecipestore } from "../stores/RecipeStore.js";

describe("Recipestore Tests", () => {
  beforeEach(async () => {
    setActivePinia(createPinia());
    const store = useRecipestore();
    await store.updateAllRecipes()
    expect(store.items).not.toBeNull();
  });
  test("Fetching Recipes ", () => {
    const store = useRecipestore();
    store
      .updateAllRecipes()
      .then(() => {
        expect(store.items).not.toHaveLength(0);
      })
      .catch((ex) => {
        console.log(ex);
      });
  });
  test("getHiglited is never null",()=>{
    const store = useRecipestore(); 
    let highlited = []
    expect(store.items).not.toHaveLength(0);
    highlited = store.getHighlightedItems();
    console.log(highlited);
    expect(highlited).not.toHaveLength(0);
  })
});
