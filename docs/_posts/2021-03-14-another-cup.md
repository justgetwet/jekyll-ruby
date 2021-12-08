---
layout: post
date: 2021-05-14T14:30:30+09:00
title: "Sassとsvg"
---


Jekyllのマークダウン処理はkramdownが標準。シンタックスハイライターの標準はcoderayだが、より新しいライブラリのrougeに差し替える。

#### 1. Rougeのインストール

インストール後、Githubスタイルのハイライトでcssを生成

```shell
gem install rouge
rougify style github > syntax.css
```

#### 2. 設定ファイルへの記述

GFM (Github Foun.. Markdown)

```yml
title: "Jekyll's Blog"

markdown: kramdown
highlighter: rouge

kramdown:
  input: GFM
  syntax_highlighter: rouge

```


あとは、cssを仕上げるだけ。



