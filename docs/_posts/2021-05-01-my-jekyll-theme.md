---
layout: post
date: 2021-05-01
title: "Jekyll Theme"
---

### 1. brank option

default theme の minima を入れない空プロジェクトの作り方。

```shell
jekyll new my-jekyll --blank
jekyll s
```

### 2. headr and footer

```html
<!-- _includes/header.html -->
<header>
    <h1><a href="/">{{ site.title }}</a></h1>
</header>
```

```html
<!-- _includes/header.html -->
<footer>
    c shaky snails 2021
</footer
```

```
<!-- _layout/default.html -->
  <body>

    {%- include header.html -%}

    <main class="page-content" aria-label="Content">
      <div class="wrapper">
        {{ content }}
      </div>
    </main>

    {%- include footer.html -%}

  </body>
```

### 3. page and post

```
<!-- _layout/page.html -->
---
layout: default
---
<main>
  <div>
    {% if page.desc %}
    <h2>{{ page.desc }}</h2>
    {% endif %}

    <div>
      {{ content }}
    </div>
  </div>
</main>
```

```
<!-- _layout/post.html -->
---
layout: default
---
<main>
  <article>
    <p>Posted: {{ page.date | date: "%Y-%m-%d" }}</p>
    {% if page.desc %}
    <h2>{{ page.desc }}</h2>
    {% endif %}
    <div>
      {{ content }}
    </div>
  </article>
</main> 
```

### 4. index

```
<!-- index.html -->
---
layout: default
---

<main>
  <section>
    <header>
      <h2>Posts</h2>
    </header>
    {% for post in site.posts %}
      <aside>
        <a href="{{ post.url }}"><h3>{{ post.title }}</h3></a>
        <p>{% if post.desc %}{{ post.desc }}{% else %}{{ post.content | strip_html | truncate: 130 }}{% endif %}</p>
      </aside>  
    {% endfor %}
  </section>
</main>
```


