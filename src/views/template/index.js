export default {
  name: 'lala',
  components: {},
  data() {
    return {
      query: {},
    };
  },
  created() {
    this.getInfoFromUrl();
  },
  mounted() {
  },
  methods: {
    // 获取url上的参数
    getInfoFromUrl() {
      this.query = this.$route.query;
    },
  },
};
