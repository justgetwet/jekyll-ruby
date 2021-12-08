---
layout: post
title: bundlerとblankプロジェクト
---

Quick Startは最初にbundlerを入れてくる。

しかしbundlerはruby2.6[(Dec 25, 2019 released)](https://www.ruby-lang.org/ja/news/2018/12/25/ruby-2-6-0-released/)から標準gemsになり、rubyが古くても何か書いていれば入っていることがあるので無暗に入れない。

### 4. bundlerによるjekyllのインストール

参考：[BundlerでJekyllを使う](https://jekyllrb-ja.github.io/tutorials/using-jekyll-with-bundler/)

```shell
# shell
bundler -v
# -> Bundler version 2.1.4
mkdir jekyll-blog
cd jekyll-blog
bundle init
bundle add jekyll
```

### 5. Windows対応

Gemfileに記述。[wdm](https://rubygems.org/gems/wdm/versions/0.1.0): Windows Directory Monitor

```shell
# Gemfile
gem 'wdm', '>= 0.1.0' if Gem.win_platform?
```

開発環境の変更をリアルタイムで反映させるプロセスに利用しているのか。

```shell
# shell
bundle install
```

### 6. blankプロジェクトの作成

`jekyll new`コマンドは、`--blank`オプションを付けないと、デフォルトテーマのminimaをインストールするので注意。

```shell
# shell
bundle exec jekyll new --blank --force --skip-bundle .
bundle install
```

root/vendor/bundle/ruby/2.xx/gems に依存ライブラリがインストールされる。

```shell
# shell
bundle exec jekyll s
# -> Server address: http://127.0.0.1:4000
```

ブラウザでlocalhost:4000にアクセス

![firstpage](../../../assets/images/ready-to-go.png)

ルートのindex.md

```markup
<!-- index.md -->
---
layout: default
title: "Happy Jekylling!"
---

## You're ready to go!

Start developing your Jekyll website.
```



