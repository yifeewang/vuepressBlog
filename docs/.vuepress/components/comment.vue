// Comment.vue
<template>
  <div class="gitalk-container">
    <div id="gitalk-container"></div>
  </div>
</template>

<script>
import md5 from "blueimp-md5";
import "gitalk/dist/gitalk.css";
import Gitalk from "gitalk";

export default {
  name: "comment",
  mounted() {
    const commentConfig = {
      clientID: "7d94e2ea04d869d06cdf",
      clientSecret: "73da0e2f21f3da9bbe5896a41570e2bd5c84abfc",
      repo: "helloyifee.github.io",
      owner: "yifeewang",
      admin: ["yifeewang"],
      id: md5(location.pathname).substr(0, 50)
    };
    const gitalk = new Gitalk(commentConfig);
    gitalk.render("gitalk-container");
  }
};
</script>
