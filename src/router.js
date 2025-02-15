import { createRouter, createWebHistory } from 'vue-router';
import AppHeader from './layout/AppHeader.vue';
import AppFooter from './layout/AppFooter.vue';
import Components from './views/Components.vue';

// Define routes
const routes = [
  {
    path: '/',
    name: 'components',
    components: {
      header: AppHeader,
      default: Components,
      footer: AppFooter
    },
    meta: { transparentHeader: true } 
  },
 
];

// Create the router instance
const router = createRouter({
  history: createWebHistory(), // Use HTML5 history mode
  routes,
  scrollBehavior(to) {
    if (to.hash) {
      return { selector: to.hash };
    } else {
      return { x: 0, y: 0 };
    }
  }
});

export default router;
