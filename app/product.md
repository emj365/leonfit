---
layout: page
title: Product
permalink: /product.html
images:
  - img/products-gym/20160326_150538.jpg
  - img/products-gym/20160326_150548.jpg
  - img/products-gym/20160326_150640.jpg
  - img/products-gym/20160326_150658.jpg
  - img/products-gym/20160326_150714.jpg
  - img/products-gym/20160326_150752.jpg
  - img/products-gym/20160326_150816.jpg
  - img/products-gym/20160326_150822.jpg
  - img/products-gym/20160326_150918.jpg
  - img/products-gym/20160326_150942.jpg
  - img/products-gym/20160326_151008.jpg
  - img/products-gym/20160326_151132.jpg
  - img/products-gym/20160326_151140.jpg
  - img/products-gym/20160326_151146.jpg
  - img/products-gym/20160326_151154.jpg
  - img/products-gym/20160326_151208.jpg
  - img/products-gym/20160326_151218.jpg
  - img/products-gym/20160326_151234.jpg
  - img/products-gym/20160326_151244.jpg
  - img/products-gym/20160326_151304.jpg
  - img/products-gym/20160326_151324.jpg
  - img/products-gym/20160326_151338.jpg
  - img/products-gym/20160326_151506.jpg
  - img/products-gym/20160326_151516.jpg
  - img/products-gym/20160326_151530.jpg
  - img/products-gym/20160326_152122.jpg
  - img/products-gym/20160326_152314.jpg
  - img/products-gym/20160326_152336.jpg
  - img/products-gym/20160326_152346.jpg
---


<style type="text/css">
.grid .grid-item {
  width: 33%;
}

@media (max-width: 480px) {
  .grid .grid-item {
    width: 50%;
  }
}

.grid .grid-item img {
  padding: 10px;
  width: 100%;
}
</style>

<div class="row">
  <div class="grid">
      {% for image in page.images %}
        <div class="grid-item">
          <img class="lazy" src="{{image}}" data-original="{{image}}" />
        </div>
      {% endfor %}
  </div>

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
