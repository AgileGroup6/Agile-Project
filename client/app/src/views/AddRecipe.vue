<template>
  <body>
    <head>
      <title>Add Recipe</title>
    </head>

    <form style="color: black" class="container">
      <header class="row">
        <h1 class="title">Add Recipe</h1>
      </header>

      <div class="row boxes">
        <div class="form-group">
          <label for="title">Title *</label>
          <input
            type="text"
            class="form-control"
            id="title"
            placeholder="Title"
            required
          />
        </div>
      </div>

      <div class="row boxes">
        <div class="form-group">
          <label for="serves">Serves</label>
          <input
            type="number"
            class="form-control"
            name="serves"
            placeholder="Serves"
            v-model="serves"
            required
          />
        </div>
      </div>

      <div class="row boxes">
        <div class="form-group">
          <label for="cars">Choose your ingredients:</label>
          <select
            class="form-control"
            placeholder="Ingredients"
            name="ingredients"
            v-model="ingredient"
          >
            <option v-for="ingredient in ingredients" :key="ingredient.id">
              {{ ingredient.name }}
            </option>
          </select>
          <input
            style="margin-top: 1%"
            class="form-control"
            type="text"
            name="amount"
            placeholder="Amount"
            v-model="amount"
            required
          />
          <button class="btn btn-success" type="button" @click="addMeasurement">
            Add ingredients
          </button>
        </div>
      </div>

      <div class="row boxes">
        <div class="row" ref="selectedMeasurements">
          <h2></h2>
          <div>
            <div
              class="form-control"
              v-for="measurement in selectedMeasurements"
              :key="measurement"
            >
              {{ measurement.ingredient }}
              {{ measurement.amount }}
              <button
                class="btn btn-danger"
                @click="deleteMeasurements(measurement)"
              >
                Delete
              </button>
            </div>
          </div>
        </div>
      </div>

      <div class="row boxes">
        <div class="form-group">
          <label for="exampleFormControlFile1">Image</label>
          <input type="file" class="form-control-file" id="Import Image" />
        </div>
      </div>

      <div class="row boxes">
        <div class="form-group">
          <label for="exampleFormControlTextarea1">Instructions *</label>
          <textarea class="form-control" id="instructions" rows="3"></textarea>
        </div>
      </div>

      <div class="row boxes">
        <a href="admin"
          ><button
            type="button"
            @click="postRecipe"
            class="btn btn-success"
            style="color: white"
          >
            Add recipe
          </button></a
        >
      </div>
    </form>
  </body>
</template>

<script>
export default {
  data() {
    return {
      // TODO fetch ingredients from pinata store
      ingredients: [
        {
          id: 1,
          name: "Butter",
        },
        {
          id: 2,
          name: "Nuts",
        },
        {
          id: 3,
          name: "Beans",
        },
        {
          id: 4,
          name: "rice",
        },
        {
          id: 4,
          name: "pasta",
        },
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
}

body {
  background-color: #ffffff;
}

.title {
  margin-top: 2%;
}

h1 {
  font-weight: 700;
}

.boxes {
  margin-top: 10px;
  margin-bottom: 10px;
}

.btn {
  margin-top: 10px;
}
</style>
