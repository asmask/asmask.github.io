import { createApp } from "vue";
import App from "./App.vue";
import router from "./router";
import { BootstrapVue3 } from 'bootstrap-vue-3';
import Vue3Transitions from "vue3-transitions";
import Argon from "./plugins/argon-kit";

// Import styles
import 'bootstrap/dist/css/bootstrap.css';
import 'bootstrap-vue-3/dist/bootstrap-vue-3.css';

// Create the app instance
const app = createApp(App);

// Configure router base
router.options.base = window.location.pathname;

// Use plugins
app.use(router);
app.use(BootstrapVue3);
app.use(Vue3Transitions);
app.use(Argon);

// Mount the app
app.mount("#app");
