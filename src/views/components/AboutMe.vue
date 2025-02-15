<template>
    <p id="hello">
      Hello <span ref="textRotate" class="wrap"></span><span class="wrap-border">|</span>
    </p>
  </template>
  
  <script>
  export default {
    data() {
      return {
        words: ["World !","Recruter ?!",  "Visitor 😉"],
        loopNum: 0,
        txt: "",
        isDeleting: false,
        period: 2000, // Time before changing words
      };
    },
    mounted() {
      this.tick(); // Start the text rotation when the component is mounted
    },
    methods: {
      tick() {
        const element = this.$refs.textRotate;
        if (!element) return;
  
        let i = this.loopNum % this.words.length;
        let fullTxt = this.words[i];
  
        this.txt = this.isDeleting
          ? fullTxt.substring(0, this.txt.length - 1)
          : fullTxt.substring(0, this.txt.length + 1);
  
        element.innerHTML = `<span class="wrap">${this.txt}</span>`;
  
        let delta = this.isDeleting ? 100 : 200;
  
        if (!this.isDeleting && this.txt === fullTxt) {
          delta = this.period;
          this.isDeleting = true;
        } else if (this.isDeleting && this.txt === "") {
          this.isDeleting = false;
          this.loopNum++;
          delta = 500;
        }
  
        setTimeout(this.tick, delta);
      },
    },
  };
  </script>
  
  <style scoped>
  .wrap {
    border-right: 0.08em solid #666;
    padding-right: 5px;
  }
  </style>
  