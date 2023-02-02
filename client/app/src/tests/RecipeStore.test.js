import { setActivePinia, createPinia } from 'pinia'
import { useRecipestore } from '../stores/RecipeStore.js';

describe("Recipestore Tests",()=>{
    beforeEach(()=>{
        setActivePinia(createPinia());
        const store = useRecipestore(); 
        store.updateAllRecipes().then(()=>{
            expect(store.items).not.toBeNull(); 
        }).catch((ex)=>{
            console.log(ex);
        })
    })
    test('Fetching Recipes ', () => { 
        const store = useRecipestore(); 
        store.updateAllRecipes().then(()=>{
            expect(store.items).not.toBeNull(); 
        }).catch((ex)=>{
            console.log(ex);
        })
     })
})