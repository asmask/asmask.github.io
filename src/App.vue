<template>
    <div id="app">
      <component :is="$route.matched[0]?.components?.header" :transparent="isTransparentHeader" />
      <main>
            <FadeInOut  origin="center" mode="out-in" :duration="250">
                <router-view/>
            </FadeInOut >
        </main>
        <router-view name="footer"></router-view>

    </div>
</template>
<script>
import { FadeInOut  } from "vue3-transitions";

export default {
  components: {
    FadeInOut 
  },
  computed: {
    isTransparentHeader() {
      return this.$route.meta.transparentHeader || false; // Set transparency based on route meta
    }
  }
};
</script>
