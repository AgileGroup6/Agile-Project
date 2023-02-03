<template>
  <div v-if="errored">
    <div class="card container error">
      <img src="@/assets/sadFace.png" alt="ERROR" />
      <h1>404</h1>
      <h2>Recipe Not Found</h2>
      <p>sorry the recipe you are looking for doesn't seem to exist.</p>
    </div>
  </div>
  <div v-else-if="loading">
    <div class="card container loading">
      <p>Loading...</p>
      <div style="margin: auto" class="spinner-border" role="status">
        <span class="sr-only"></span>
      </div>
    </div>
  </div>

  <div v-else class="card container" style="background-color: #edffed">
    <div class="card-vertical">
      <div class="img-square-wrapper">
        <RecipeImage :recipe="recipe.name" />
      </div>
      <div class="card-body">
        <div style="float: left">
          <u>
            <h1 class="card-title">{{ recipe.name }}</h1>
          </u>
        </div>

        <div style="text-align: right">
          <h1>Serves: {{ recipe.serves }}</h1>
        </div>

        <br />
        <h3 class="card-title">Ingredients:</h3>
        <div class="measurement card-text">
          <div class="form-check form-switch">
            <input
              class="form-check-input"
              v-model="selectOn"
              type="checkbox"
              id="flexSwitchCheckDefault"
            />
            <label class="form-check-label" for="flexSwitchCheckDefault"
              >Select All</label
            >
          </div>
          <div
            class="singleMeasurement"
            v-for="measurement in recipe.ingredients"
            :key="measurement.name"
          >
            <div class="form-check">
              <input
                class="form-check-input"
                :checked="selectOn"
                type="checkbox"
                name="ingredient"
                id="flexCheckDefault"
              />
              <div style="float: left; width: 200px">
                {{ measurement.name }}
              </div>

              <div>
                {{ measurement.amount }}
              </div>
            </div>
          </div>
          <button
            type="button"
            @click="addCheckBoxesToArray"
            class="btn btn-primary"
          >
            Add To Shopping List
          </button>
          <h3 class="card-title">Instructions:</h3>
          <textarea
            style="
              width: 100%;
              background-color: #edffed;
              border-color: transparent;
            "
            v-model="recipe.instructions"
            readonly
          ></textarea>

          <button type="button" @click="shareUrl" class="btn btn-primary">
            Share
          </button>
        </div>
      </div>
    </div>
  </div>
</template>

<script setup>
import RecipeImage from "@/components/RecipeImage.vue";
</script>

<script>
import axios from "axios";
import { useIngridentsStore } from "../stores/ingridentsStore.js";

const store = useIngridentsStore();
export default {
  data() {
    return {
      recipe: {},
      errored: false,
      loading: true,
      selectOn: false,
    };
  },
  methods: {
    shareUrl() {
      navigator.clipboard.writeText(window.location.href);
    },
    addCheckBoxesToArray() {
      var checkboxes = document.getElementsByName("ingredient");

      for (var i = 0; i < checkboxes.length; i++) {
        if (checkboxes[i].checked == true) {
          store.shoppingList.push(this.recipe.ingredients[i]);
        }
      }
    },
  },

  beforeMount() {
    this.loading = true;
    axios
      .get(
        "https://lgl.caydey.com/api/getRecipe?id=" +
          this.$route.params.recipe_id
      )
      .then((response) => {
        // handle success

        this.recipe = response.data.data;
        this.errored = false;
        this.loading = false;
      })
      .catch((error) => {
        // handle error
        this.loading = false;
        this.errored = true;
        console.log(error);
      });
  },
};
</script>
<style scoped>
.card {
  border-width: 2px;
  border-color: black;
}

.card-horizontal {
  display: flex;
  flex: 1 1 auto;
}

.img-square-wrapper {
  padding-top: 1rem;
}

.img-square-wrapper img {
  border: 2px solid #000;
  border-radius: 5px;
}

.error {
  text-align: center;
}

.error img {
  width: 30%;
  height: 30%;
  display: block;
  margin-left: auto;
  margin-right: auto;
}

.loading {
  text-align: center;
  margin-left: auto;
  margin-right: auto;
}

textarea {
  border: none;
  overflow: auto;
  outline: none;

  -webkit-box-shadow: none;
  -moz-box-shadow: none;
  box-shadow: none;

  resize: none;
}
</style>
