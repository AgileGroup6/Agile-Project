import { createApp } from "vue";
import { createPinia } from "pinia";
import "bootstrap/dist/css/bootstrap.min.css"
import "bootstrap"

import App from "./App.vue";
import router from "./router";

//import "./assets/main.css";
import './registerServiceWorker'

const app = createApp(App);

app.use(createPinia());
app.use(router);

app.mount("#app");

import "bootstrap/dist/js/bootstrap.min.js";