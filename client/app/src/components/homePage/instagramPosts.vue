<template>
  <div class="col" id="posts">
    <!--This is the container which holds the instagram posts-->
    <div
      class="embedsocial-hashtag"
      data-ref="954298ae553cdc0981bb5e5ff52391938b490d61"
    ></div>
  </div>
</template>

<script>
//This script is necessary for the linked instagram posts in the footer to work
(function (d, s, id) {
  var js;
  if (d.getElementById(id)) {
    return;
  }
  js = d.createElement(s);
  js.id = id;
  js.src = "https://embedsocial.com/cdn/ht.js";
  d.getElementsByTagName("head")[0].appendChild(js);
})(document, "script", "EmbedSocialHashtagScript");
</script>
