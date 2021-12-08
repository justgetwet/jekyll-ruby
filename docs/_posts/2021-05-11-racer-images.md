---
layout: post
date: 2021-05-11
title: "選手の画像"
---

### 1. 画像のダウンロード

```python
import urllib.request
import requests
from bs4 import BeautifulSoup
url = "https://autorace.jp/netstadium/Ranking/Rank/All/"
html = urllib.request.urlopen(url)
soup = BeautifulSoup(html)
```

j

```python
lst = soup.find_all("a", href=re.compile("/netstadium/Profile/"))
dic = {}
for n, e in enumerate(lst):
    no = re.sub("\D", "", str(e))
    name = re.sub("\t|\n| |\u3000", "", e.text)
    s = "S-" + str(n + 1) + "_" + name
    dic[s] = no
```

j

```python
u = "https://autorace.jp/netstadium/Profile/"
for d in dic:
    url = u + dic[d]
    html = urllib.request.urlopen(url)
    soup = BeautifulSoup(html)
    img_url = soup.find_all("img")[2].get("src")
    res = requests.get("https://autorace.jp" + img_url)
    with open("./images/" + d + ".jpg", 'wb') as f:
        f.write(res.content)
```

j

iwasaki(./images/A-1_岩崎亮一.jpg){:height="200px"}　

![image]({{site.url}}{{site.baseurl}}/assets/images/GN125.jpg)

![image]({{site.url}}{{site.baseurl}}/assets/images/S16.jpg)

![](../assets/images/s166.jpg)

![](../assets/images/S16.jpg)