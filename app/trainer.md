---
layout: page
title: Trainer
permalink: /trainer.html
---

<div class="row">
  {% for i in (1..6) do %}
  <div class="col-xs-6 col-sm-3">
    <a class="fancybox" rel="group" href="/img/trainer/img-{{ i }}.jpg">
      <img class="img-responsive" src="/img/trainer/img-{{ i }}.jpg" alt="trainer" />
    </a>
  </div>
  {% endfor %}
</div>
