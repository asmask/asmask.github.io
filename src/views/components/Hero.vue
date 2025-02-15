<template>
  <section class="section-shaped my-0" id="section-about-me" >
      <div class="shape shape-style-1 shape-primary shape-skew">
        <span class="span-150"></span>
        <span class="span-50"></span>
        <span class="span-50"></span>
        <span class="span-75"></span>
        <span class="span-100"></span>
        <span class="span-75"></span>
        <span class="span-50"></span>
        <span class="span-100"></span>
        <span class="span-50"></span>
        <span class="span-100"></span>
      </div>
      <div class="container shape-container d-flex align-items-center">
        <div class="col px-0">
          <div class="row justify-content-center align-items-center">
            <div class="presentation col-lg-8 text-white text-center pt-lg">
              <AboutMe />

              <br />
              <p>
                I’m
                <span class="font-weight-bold">Asma Skhiri</span>
                , a
                <span class="font-weight-bold">full-stack</span>
                software
                <span class="font-weight-bold">engineer</span>
                with over 2 years of professional experience in
                <span class="font-weight-bold">Symfony</span>
                and
                <span class="font-weight-bold">Vue.js</span>
                ,along with hands-on experience in
                <span class="font-weight-bold">mobile</span>
                development using

                <span class="font-weight-bold">Flutter</span>
                . Passionate about
                <span class="font-weight-bold">clean code</span>
                ,
                <span class="font-weight-bold">
                  problem-solving
                </span>
                , and building
                <span class="font-weight-bold">
                  scalable
                </span>
                web applications, I thrive on creating efficient and
                <span class="font-weight-bold">high-performing</span>
                solutions. With a strong background in
                <span class="font-weight-bold">API integrations</span>
                ,
                <span class="font-weight-bold">cloud</span>
                services, and
                <span class="font-weight-bold">agile</span>
                development, I’m always eager to tackle new challenges.
              </p>

              <p>
                🚀 Let’sbuild something great together! Explore my work and
                connect with me.
              </p>
            </div>
          </div>
        </div>
      </div>
  </section>
</template>
<script>
import AboutMe from '@/views/components/AboutMe.vue'

export default {
  components: {
    AboutMe,
  },
}
</script>
<style>
@import url('https://fonts.googleapis.com/css2?family=Silkscreen:wght@400;700&display=swap');
</style>
