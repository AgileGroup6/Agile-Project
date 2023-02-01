import { setActivePinia, createPinia } from 'pinia'
import { useIngridentsStore } from '../stores/ingridentsStore.js';

describe("IngridentsStore Tests",()=>{
    beforeEach(()=>{
        setActivePinia(createPinia());
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
        store.updateAllIngredients().then(()=>{
            expect(store.items).not.toBeNull(); 
        }).catch((ex)=>{
            console.log(ex);
        }); 
        let catagories = store.getCategories();
        expect(catagories).not.toBeNull();
     })
})

