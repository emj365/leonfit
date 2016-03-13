---
layout: page
title: Product
permalink: /product.html
---

<div class="row">
  <img class="col-xs-12 img-responsive" src="/img/shop.jpg">
</div>

### 3 Months Body Transformation

<div class="row">
  {% for i in (1..10) do %}
  <div class="col-xs-6 col-sm-3">
    <a class="fancybox" rel="group" href="/img/3monthsbodytransfromtion/img-{{ i }}.jpg">
      <img class="img-responsive" src="/img/3monthsbodytransfromtion/img-{{ i }}.jpg" alt="3 Months Body Transformation" />
    </a>
  </div>
  {% endfor %}
</div>

### Beachbody® best-selling home fitness programs

<div class="row">
  {% for i in (1..6) do %}
  <div class="col-xs-6 col-sm-3">
    <a class="fancybox" rel="group" href="/img/beachbody/img-{{ i }}.jpg">
      <img class="img-responsive" src="/img/beachbody/img-{{ i }}.jpg" alt="Beachbody® best-selling home fitness programs" />
    </a>
  </div>
  {% endfor %}
</div>
