import { createRouter, createWebHistory } from "vue-router";
import HomePage from "../views/HomePage.vue"

const router = createRouter({

    history: createWebHistory(),
    routes: [
        {
            path: "/",
            name: "home",
            component: HomePage,
        },
        //     {
        //         path: "/about",
        //         name: "about",
        //         // route level code-splitting
        //         // this generates a separate chunk (About.[hash].js) for this route
        //         // which is lazy-loaded when the route is visited.
        //     },
    {
      path: "/browse",
      name: "browse",
      // route level code-splitting
      // this generates a separate chunk (About.[hash].js) for this route
      // which is lazy-loaded when the route is visited.
      component: () => import("../views/BrowseView.vue"),
    },
  ],

});

export default router;