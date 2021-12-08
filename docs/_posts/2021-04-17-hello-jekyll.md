---
layout: post
title:  "Jekyll の導入"
date:   2021-04-17
---
Windows10 で環境を構築。ruby + msys2 + gcc + make が必要で、chocolatey ではうまくいかない。結局、Ruby Installer の Ruby+Devkit 2.7.3-1(x64) をダウンロードし展開した。

```shell
set PATH=%PATH%;C:\tools\Ruby27-x64\bin
ruby -v
# -> 2.7.3
gem -v
# -> 3.1.6
```

RubyGems で jekyll と bundler をインストール。

```shell
gem install jekyll bundler
gem install github-pages
```
GitHub Pages が使用している Jekyll 関連ツールは github-pages gem で一括インストールできる。
```shell
github-pages versions
+------------------------------+---------+
| Gem                          | Version |
+------------------------------+---------+
| jekyll                       | 3.9.0   |
| jekyll-sass-converter        | 1.5.2   |
| kramdown                     | 2.3.1   |
| kramdown-parser-gfm          | 1.1.0   |
| jekyll-commonmark-ghpages    | 0.1.6   |
| liquid                       | 4.0.3   |
| rouge                        | 3.26.0  |
| github-pages-health-check    | 1.17.0  |
| jekyll-redirect-from         | 0.16.0  |
| jekyll-sitemap               | 1.4.0   |
| jekyll-feed                  | 0.15.1  |
| jekyll-gist                  | 1.5.0   |
| jekyll-paginate              | 1.1.0   |
| jekyll-coffeescript          | 1.1.1   |
| jekyll-seo-tag               | 2.7.1   |
| jekyll-github-metadata       | 2.13.0  |
| jekyll-avatar                | 0.7.0   |
| jekyll-remote-theme          | 0.4.3   |
| jemoji                       | 0.12.0  |
| jekyll-mentions              | 1.6.0   |
| jekyll-relative-links        | 0.6.1   |
| jekyll-optional-front-matter | 0.3.2   |
| jekyll-readme-index          | 0.3.0   |
| jekyll-default-layout        | 0.1.4   |
| jekyll-titles-from-headings  | 0.5.3   |
| jekyll-swiss                 | 1.0.0   |
| minima                       | 2.5.1   |
| jekyll-theme-primer          | 0.5.4   |
| jekyll-theme-architect       | 0.1.1   |
| jekyll-theme-cayman          | 0.1.1   |
| jekyll-theme-dinky           | 0.1.1   |
| jekyll-theme-hacker          | 0.1.2   |
| jekyll-theme-leap-day        | 0.1.1   |
| jekyll-theme-merlot          | 0.1.1   |
| jekyll-theme-midnight        | 0.1.1   |
| jekyll-theme-minimal         | 0.1.1   |
| jekyll-theme-modernist       | 0.1.1   |
| jekyll-theme-slate           | 0.1.1   |
| jekyll-theme-tactile         | 0.1.1   |
| jekyll-theme-time-machine    | 0.1.1   |
+------------------------------+---------+
```

Jekyll Project を作成する。

```shell
jekyll new jekyll-demo
cd jekyll-demo
bundle exec jekyll serve
```
http://localhost:4000 で生成されたページを確認する。

.gitignore に _site を確認。

```js
// .gitignore
_site
.sass-cache
.jekyll-cache
.jekyll-metadata
vendor
```

GitHub へ push する。
```shell
git init
git add .
git commit -m "first commit"
git branch -M main
git remote add origin https://github.com/justgetwet/jekyll-demo.git
git push -u origin main
```

GitHub の Repository で Settings->GitHub Pages->Source->main(save)

Gemfile の Baseurl と url を書き込み push する。

```ruby
# Gemfile
title: Your awesome title
email: your-email@example.com
description: >- # this means to ignore newlines until "baseurl:"
  Write an awesome description for your new site here. You can edit this
  line in _config.yml. It will appear in your document head meta (for
  Google search results) and in your feed.xml site description.
baseurl: "/jekyll-demo" # the subpath of your site, e.g. /blog
url: "https://justgetwet.github.io/"
```
https://justgetwet.github.io/jekyll-demo/ へアクセスするとサイトを確認できる。

```ruby
# Gemfile
# uncomment the line below. To upgrade, run `bundle update github-pages`.
gem "github-pages", group: :jekyll_plugins
```
run `bundle update github-pages`.
