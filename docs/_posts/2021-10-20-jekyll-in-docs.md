---
layout: post
title: "Github docs"
---

### Github Pages

Githubのレポジトリから、settings -> Gihhub Pages へ進む。

- Source: Branch->main Select folder->/docs

### 手順

```shell
mkdir myrep
cd myrep
mkdir source docs
cd docs
bundle init
vim Gemfile
bundle install
```

Gemfile

```ruby
# frozen_string_literal: true

source "https://rubygems.org"

git_source(:github) { |repo_name| "https://github.com/#{repo_name}" }

gem "redshot", git: "https://github.com/justgetwet/redshot.git", 
  :branch => "main"
gem "wdm", ">= 0.1.0" if Gem.win_platform?
```

docs直下に、_config.yml、index.md、404.md をコピーする

```yml
# .gitignore
docs/_site
docs/.jekyll-cache
docs/vendor/bundle/ruby/2.7.0/bin
docs/vendor/bundle/ruby/2.7.0/build_info
docs/vendor/bundle/ruby/2.7.0/cache
docs/vendor/bundle/ruby/2.7.0/doc
docs/vendor/bundle/ruby/2.7.0/extensions
docs/vendor/bundle/ruby/2.7.0/gems
docs/vendor/bundle/ruby/2.7.0/specifications
```

```yml
# .gitmodules
[submodule "docs/vendor/bundle/ruby/2.7.0/bundler/gems/redshot-bfbe9270ce14"]
  path = docs/vendor/bundle/ruby/2.7.0/bundler/gems/redshot-bfbe9270ce14
  url = https://github.com/justgetwet/redshot.git
  branch = main
```

```shell
cd ..
git init
# git submodule update ?
```

この作業を一括で行うツールをrubyでつくる
