<template>
  <header class="header-global fixed-top">
    <base-nav class="navbar-main" transparent type="white" effect="light" expand>
      <div class="row" slot="content-header" slot-scope="{ closeMenu }">
        <div class="col-8 collapse-brand">
          <a href="/" style="text-decoration: none !important;" class="text-decoration-none">
            <h1 class="display-1 name">ASMA SKHIRI</h1>
          </a>
        </div>

        <div class="col-6 collapse-close">
          <close-button @click="closeMenu"></close-button>
        </div>
      </div>

      <ul class="navbar-nav navbar-nav-hover align-items-lg-center">
        <li class="nav-item">
          <a class="nav-link" @click.prevent="scrollToSection('about-me')">
            About Me
            <span class="sr-only">(current)</span>
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link"  @click.prevent="scrollToSection('skills')">
            Skills
          </a>
        </li>
        <li class="nav-item dropdown">
          <a
            class="nav-link"
            @click.prevent="scrollToSection('experience')"
            id="navbar-primary_dropdown_1"
            role="button"
            data-toggle="dropdown"
            aria-haspopup="true"
            aria-expanded="false"
          >
          Experience
          </a>
          <div
            class="dropdown-menu dropdown-menu-right"
            aria-labelledby="navbar-primary_dropdown_1"
          >
            <a class="dropdown-item"  @click.prevent="scrollToSection('projects')">Projects</a>
          </div>
        </li>
        
        <li class="nav-item dropdown">
          <a
            class="nav-link"
            @click.prevent="scrollToSection('education')"
            id="navbar-primary_dropdown_1"
            role="button"
            data-toggle="dropdown"
            aria-haspopup="true"
            aria-expanded="false"
          >
          Education
          </a>
          <div
            class="dropdown-menu dropdown-menu-right"
            aria-labelledby="navbar-primary_dropdown_1"
          >
            <a class="dropdown-item"              
            @click.prevent="scrollToSection('interships')"
            >Internships</a>
          </div>
        </li>
        <li class="nav-item">
          <a class="nav-link"  @click.prevent="scrollToSection('contact')">
            Contact
          </a>
        </li>
      </ul>
      <ul class="navbar-nav align-items-lg-center ml-lg-auto">
        <li class="nav-item">
          <a
            class="nav-link nav-link-icon d-flex align-items-center justify-content-center"
            href="https://linkedin.com/in/asma-skhiri"
            target="_blank"
            rel="noopener"
            data-toggle="tooltip"
            title="Follow me on Linkedin"
          >
            <i class="fa fa-linkedin"></i>
            <span class="nav-link-inner--text d-lg-none">LinkedIn</span>
          </a>
        </li>
        <li class="nav-item">
          <a
            class="nav-link nav-link-icon d-flex align-items-center justify-content-center"
            href="https://github.com/asmask"
            target="_blank"
            rel="noopener"
            data-toggle="tooltip"
            title="Follow me on Github"
          >
            <i class="fa fa-github"></i>
            <span class="nav-link-inner--text d-lg-none">Github</span>
          </a>
        </li>
      </ul>
    </base-nav>
  </header>
</template>

<style>
.navbar-transparent .navbar-nav .nav-link {
  color: rgb(132 100 204) !important;
}
.dropdown-item {
  color: rgb(132 100 204) !important;
}
.dropdown-item:active, .dropdown-item:focus, .dropdown-item:hover {
  background-color: rgba(132, 100, 204, 0.1) !important;
  color: rgb(132, 100, 204) !important;
}
.nav-link-icon {
  width: 2.5rem;
  height: 2.5rem;
  padding: 0 !important;
}
.header-global {
  background-color: rgba(255, 255, 255, 0.9);
  backdrop-filter: blur(10px);
  -webkit-backdrop-filter: blur(10px);
}
@media (max-width: 768px) {
  .dropdown-menu {
    background-color: transparent !important;
    border: none !important;
  }
  .dropdown-item {
    padding-left: 1.5rem !important;
  }
}
</style>

<script>
import BaseNav from '@/components/BaseNav.vue'
import BaseDropdown from '@/components/BaseDropdown.vue'
import CloseButton from '@/components/CloseButton.vue'

export default {
  components: {
    BaseNav,
    CloseButton,
    BaseDropdown,
  },
  methods: {
  scrollToSection(sectionId) {
    this.$nextTick(() => {
      const section = document.getElementById(sectionId);
      console.log(`Trying to scroll to: ${sectionId}`, section);
      if (section) {
        section.scrollIntoView({ behavior: "smooth", block: "start" });
      } else {
        console.warn(`