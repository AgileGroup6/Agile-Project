import { setActivePinia, createPinia } from 'pinia'
import { useIngridentsStore } from '../stores/ingridentsStore.js';

describe("IngridentsStore Tests",()=>{
    beforeEach(()=>{
        setActivePinia(createPinia());
        const store = useIngridentsStore(); 
        store.updateAllIngredients().then(()=>{
            expect(store.items).not.toBeNull(); 
        }).catch((ex)=>{
            console.log(ex);
        })
    })
    test('Fetching Ingridents ', () => { 
        const store = useIngridentsStore(); 
        store.updateAllIngredients().then(()=>{
            expect(store.items).not.toBeNull(); 
        }).catch((ex)=>{
            console.log(ex);
        })
     })
     test('Getting Catagories',()=>{
        const store = useIngridentsStore(); 
        let catagories = store.getCategories();
        expect(catagories).not.toBeNull();
     })
     test('Adding things to shopping list',()=>{
        const store = useIngridentsStore();
        const item = store.items[0];
        store.addItem(item);
        expect(store.shoppingList[0]).toBe(item);
        store.shoppingList = [];
     })
})

