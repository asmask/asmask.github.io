<template>
    <div>
        <hero id="about-me"></hero>
        <basic-elements id="skills"></basic-elements>
        <inputs id="experience"></inputs>
        <custom-controls id="projects"></custom-controls>
        <navigation id="education"></navigation>
        <javascript-components id="interships"></javascript-components>
        <carousel id="contact"></carousel>
    </div>
</template>
<script>
import Hero from "./components/Hero.vue";
import BasicElements from "./components/BasicElements.vue";
import Inputs from "./components/Inputs.vue";
import CustomControls from "./components/CustomControls.vue";
import Navigation from "./components/Navigation.vue";
import JavascriptComponents from "./components/JavascriptComponents.vue";
import Carousel from "./components/Carousel.vue";

export default {
  name: "components",
  components: {
    Hero,
    BasicElements,
    Inputs,
    CustomControls,
    Navigation,
    JavascriptComponents,
    Carousel,
  }
};
</script>
