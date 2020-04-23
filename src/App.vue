<template>
  <div id="app">
    <router-view/>
  </div>
</template>
<script>
  //  rem和pc端居中
  const root = document.getElementsByTagName('html')[0];
  function resize() {
    const screenWidth = document.documentElement.clientWidth > 800 ? 500
      : document.documentElement.clientWidth;
    root.style.fontSize = `${screenWidth / 7.5 }px`;
  }

  window.onresize = resize;
  resize();
  export default {
    name: 'App',
    components: {},
    created() {},
    computed: {},
    data() {
      return {};
    },
    methods: {},
  };
</script>
<style>
  #app {
    font-family: Avenir, Helvetica, Arial, sans-serif;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
    text-align: center;
    color: #2c3e50;
    width: 7.5rem;
    margin: 0 auto;
    -webkit-overflow-scrolling: touch;
  }
</style>
