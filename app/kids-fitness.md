---
layout: page
title: Kids Fitness
permalink: /kids-fitness.html
---

<div class="row">
  {% for i in (1..7) do %}
  <div class="col-xs-6 col-sm-3">
    <a class="fancybox" rel="group" href="/img/kidsfitness/img-{{ i }}.jpg">
      <img class="img-responsive" src="/img/kidsfitness/img-{{ i }}.jpg" alt="Kids Fitness" />
    </a>
  </div>
  {% endfor %}
</div>
