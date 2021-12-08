---
layout: post
title: Jekyllとオブジェクト
date: 2021-05-09
render_with_liquid: false
---

rubyといえばオブジェクト。

### 7. テンプレート言語 liquid

error の中に記述

```html
<!-- if -->
{% if page.next %}
  <p>{{ page.next.title }}</p>
{% endif %}
<!-- loop -->
{% for post in posts %}
  <p>{{ post.title }}</p>
{% endfor %}
<!-- filter -->
<p>{{ page.date | date: %Y %m %d }}</p>
```

### 8. ディレクトリ

アンダーバー始まりのディレクトリーをオブジェクトとして扱う。

- `_posts`

`_posts`ディレクトリーは、配下のファイルを`post`オブジェクトとして格納し、`post`オブジェクトは、Front matterに記述された`title`や`date`などの変数をプロパティとしてもつ。

- `_drafts`

`_drafts`ディレクトリーは、配下のファイルを


### 7. 重要なライブラリ

- Template language: [liquid](https://shopify.github.io/liquid/)
- Markdown engine: [Kramdown](https://github.com/gettalong/kramdown)
- Syntax highliter: [Rouge](https://github.com/rouge-ruby/rouge)
- Sass converter: [jekyll-sass-converter](https://github.com/jekyll/jekyll-sass-converter)

参考: [Aug 20, 2019 Jekyll 4.0.0 Released](https://github.com/jekyll/jekyll-sass-converter)

### 8. プラグイン

[プラグイン](https://jekyllrb.com/docs/plugins/)でrss feedやseo tagなど、webサイトに必要とされる機能を追加する。なおこのサイトでプラグインは利用していない。

### 9. 生成ルール

#### 9.1 ディレクトリ構造

blankプロジェクトのディレクトリ構造が基本の骨格で、主にアンダーバー始まりのディレクトリやファイルが生成処理のターゲットとなる。

```shell
.
├─ _data # データファイル
├─ _drafts # 投稿前の記事
├─ _includes # header/footerなどパーツの`html`
├─ _layouts # テンプレート
 　└─ default.html # 基本レイアウト
├─ _posts # 投稿記事
├─ _sass
 　└─ main.sass # スタイルシート
├─ assets # リソース
├─ vendor # 依存ライブラリ
├─ _config.yml # 設定ファイル
├─ index.md # index.htmlに変換される
```

#### 9.2 Front matter

Front matterをhtmlやマークダウンに記述。グローバル定数の`layout`でテンプレートを指定するなど、サイト生成で参照される。

##### - html

```html
---
layout: default
---
<main>
 ...
</main>

```

##### - markdown

```markdown
---
layout: post
date: 2021-05-08
title: "first post"
published: true
---
Some day, my awareness ..

```

#### 9.3 投稿記事のファイル名とUrl style

投稿記事のファイル名は、日付けで始まり、yyyy-mm-dd-title.mdの形式で作成。ファイル名を参照し、`http://baseurl/Year/Month/Day/Title.html`のpathに変換する。なおFront matterにdate変数と値を加えると、それを優先して処理する。


