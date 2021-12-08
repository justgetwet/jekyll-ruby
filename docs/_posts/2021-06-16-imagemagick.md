---
layout: post
title: "ImageMagick"
---

ImageMagickの脆弱性

透過pngの作成

```shell
# windows
magick before.png -fuzz 10% -transparent white after.png
```

透過pngと背景画像(jpg)の重ね合わせ

```shell
compsite -gravity northwest -compose over tp.png befor.jpg after.jpg
```

ImageMagickとrmagick

windows版のrmagick

minimagick

