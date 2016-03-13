---
layout: page
title: Kungfu
permalink: /kungfu.html
---

<div class="row">
  {% for i in (1..5) do %}
  <div class="col-xs-6 col-sm-3">
    <a class="fancybox" rel="group" href="/img/kungfu/img-{{ i }}.jpg">
      <img class="img-responsive" src="/img/kungfu/img-{{ i }}.jpg" alt="Kungfu" />
    </a>
  </div>
  {% endfor %}
</div>
