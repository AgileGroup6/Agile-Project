<template>
  <body>
    <head>
      <title>Add Recipe</title>
    </head>

    <header>
      <h1 class="title">Admin Page</h1>
    </header>

    <form>
      <div class="input">
        <label class="left-text" for="title">Title *</label>
        <input
          class="bar"
          type="text"
          name="title"
          placeholder="Title"
          v-model="title"
          required
        />
      </div>

      <div class="input">
        <label for="serves">Serves</label>
        <input
          type="number"
          name="serves"
          class="bar"
          placeholder="Serves"
          v-model="serves"
          required
        />
      </div>

      <div class="input">
        <label class="left-text" for="cars">Choose your ingredients:</label>
        <select class="bar" name="ingredients" v-model="ingredient">
          <option v-for="ingredient in ingredients" :key="ingredient.id">
            {{ ingredient.name }}
          </option>
        </select>
        <input
          class="bar"
          type="text"
          name="amount"
          placeholder="Amount"
          v-model="amount"
          required
        />
        <button type="button" @click="addMeasurement">Add</button>
      </div>

      <div ref="selectedMeasurements">
        <h2></h2>
        <div>
          <div v-for="measurement in selectedMeasurements" :key="measurement">
            {{ measurement.ingredient }}
            {{ measurement.amount }}
            <button @click="deleteMeasurements(measurement)">Delete</button>
          </div>
        </div>
      </div>

      <div class="input">
        <label class="left-text" for="instructions">Instructions *</label>
        <textarea
          id="instructions"
          name="instructions"
          rows="4"
          cols="50"
          v-model="instructions"
          required
        ></textarea>
      </div>

      <button type="button" @click="postRecipe" id="button-continue">
        ADD RECIPE to db
      </button>
    </form>
  </body>
</template>

<script>
export default {
  data() {
    return {
      // TODO fetch ingredients from pinata store
      ingredients: [
        { id: 1, name: "one11" },
        { id: 2, name: "deadad" },
        { id: 3, name: "dadawd" },
        { id: 4, name: "yep" },
        { id: 4, name: "other" },
      ],
      ingredient: "",
      amount: "",
      serves: "",
      title: "",
      instructions: "",
      selectedMeasurements: [],
    };
  },

  methods: {
    addMeasurement() {
      if (!this.ingredient || !this.amount) {
        return;
      }
      this.selectedMeasurements.push({
        ingredient: this.ingredient,
        amount: this.amount,
      });
    },
    deleteMeasurements(n) {
      this.selectedMeasurements = this.selectedMeasurements.filter(
        (m) => m.ingredient != n.ingredient || m.amount != n.amount
      );
    },
    postRecipe() {
      console.log("POST");
      console.log("measurements", this.selectedMeasurements);
      console.log("title", this.title);
      console.log("serves", this.serves);
      console.log("instructions", this.instructions);
    },
  },
};
</script>

<style>
* {
  font-family: "arial";
  background-color: #ffffff;
  width: 100%;
}

/* .input {
  background-color: #FFFFFF;
  margin-bottom: 24px;
  width: 350px;
  display: flex;
  flex-direction: column;
  align-items: flex-start;
  align-self: stretch;
} */

.left-text {
  width: 350px;
  font-size: 14px;
  font-weight: 600;
  line-height: normal;
  color: #191d23;
  flex: 1;
  margin-bottom: 4px;
}

.bar {
  border-radius: 4px;
  padding: 7px 11px;
  display: flex;
  align-items: center;
  align-self: stretch;
  border: 1px solid #000000;
}

.title {
  font-family: "arial";
  font-size: 36px;
  font-weight: 700;
  line-height: 44px;
  color: #000000;
  margin-bottom: 4px;
  letter-spacing: -0.72px;
}

body {
  background-color: #ffffff;
  padding: 24px 24px 350px;
  /* display: flex; */
  flex-direction: column;
  align-items: center;
}

.logo {
  width: 175px;
  height: 110px;
  margin-bottom: 24px;
  margin-left: auto;
  margin-right: auto;
}

header {
  margin-bottom: 24px;
  display: flex;
  flex-direction: column;
  align-items: flex-start;
  width: 350px;
}

h1 {
  font-weight: 700;
  line-height: normal;
  color: #191d23;
  align-self: stretch;
  margin-bottom: 8px;
}

.subtitle {
  font-size: 14px;
  font-weight: 400;
  line-height: normal;
  color: #64748b;
  align-self: stretch;
}

#button-continue {
  background-color: #329e63;
  border-radius: 4px;
  padding: 6px 12px;
  display: flex;
  align-items: center;
  justify-content: center;
  width: 291px;
  font-size: 16px;
  font-weight: 600;
  line-height: normal;
  color: #ffffff;
  text-align: center;
  transition-duration: 0.4s;
}

#button-continue:hover {
  box-shadow: 0 12px 16px 0 rgba(0, 0, 0, 0.24),
    0 17px 50px 0 rgba(0, 0, 0, 0.19);
}

span {
  display: block;
  margin-left: 20px;
  color: red;
  font-style: italic;
}
</style>
