---
layout: post
title: NextJS for Surge
date: 2021-04-30
---

### 1. NextJS で静的ファイルの出力

next export で静的ファイルを出力

```json
// pacage.json
"scripts": {
	"dev": "next dev",
	"build": "next build && next export",
}
```

ルートに、`next.config.js` を置く。

```js
// add next.config.js
module.exports = {
  trailingSlash: true,
  exportPathMap: function () {
    return {
      "/": { page: "/" },
    };
  },
};

```

next/image （画像最適化） のエラーが原因で、ビルドが落ちる。

```shell
Error: Image Optimization using Next.js' default loader is not compatible with `next export`.
Possible solutions:
  - Use `next start`, which starts the Image Optimization API.
  - Use Vercel to deploy, which supports Image Optimization.
  - Configure a third-party loader in `next.config.js`.
```

next/image を外すと成功。ルートに静的ファイルが出力された out フォルダが出来る。

`surge out/ oceanic-noise.surge.sh`

