import { createApp } from "vue";
import { createPinia } from "pinia";
import "bootstrap/dist/css/bootstrap.min.css";
import "bootstrap";

import App from "./App.vue";
import router from "./router";

if ('serviceWorker' in navigator) {
    window.addEventListener('load', () => {
      navigator.serviceWorker.register('/sw.js');
    });
  }

const app = createApp(App);

app.use(createPinia());
app.use(router);

app.mount("#app");
