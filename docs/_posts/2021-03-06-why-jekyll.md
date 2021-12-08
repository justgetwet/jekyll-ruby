---
layout: post
date: 2021-05-06T15:03:54+09:00
title: なぜJekyll?
render_with_liquid: false
---

GatsbyとNextを書いていた。なにか重いように感じた。ホスティングにGithub Pagesを試したときJekyllのことが気になった。

ちょっとだけ知見を書き溜めるだけなら、Jekyll + GitHub Pagesが良さそう。だけどRubyをしばらく書いていない。

うっかりQuick Startを叩いてしまった。

### 1. Jekyll

- ruby製の静的サイトジェネレータ
- Github Pagesのバックエンド
- 初版 May 5, 2013 ~ 最新版 4.2.0 Dec 12, 2020
- [Official website](https://jekyllrb.com/)
- [Official 日本語](http://jekyllrb-ja.github.io/)
- [Repository](https://github.com/jekyll)

### 2. Ruby

#### - Mac (MacBook Air + Big Sur)

```shell
# shell
ruby -v
# -> ruby 2.7.3
gem -v
# -> 3.1.6
gcc -v
# -> ... MacOSX.sdk/usr/include/c++/4.2.1
make -v
# -> GNU Make 3.81
```

#### - Windows (Windows10 64bit)

gcc + make のビルド環境が必要。[Ruby Installer](https://rubyinstaller.org/downloads/)から、Ruby+Devkit 2.7.3-1(x64) をダウンロードし、C:直下のtoolsディレクトリに展開。

```shell
# shell
set PATH=%PATH%;C:\tools\Ruby27-x64\bin
ruby -v
# -> 2.7.3
gem -v
# -> 3.1.6
c:\tools\Ruby27-x64\msys64\minwg64.exe
# MSYS64 MINWG64 Shell
$ gcc -v
# -> gcc version 10.2.0
$ make -v
# -> GNU Make 4.3
$ exit
```

### 3. Quick Start?

オフィシャルのTop Pageより。

```shell
# shell
gem install bundler jekyll
```

Jekyllを試すにはそのまま進めてよいが、環境が汚れるのでやり直すことになる。
