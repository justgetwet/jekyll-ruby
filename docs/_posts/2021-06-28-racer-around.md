---
layout: post
title: Racer Around
---

円形コースをまわるmethod。角度をdif分増やしていく。

```ruby
def initialize
  @piece = image.new
  x, y = ini_x, ini_y
	degree = ini_agree
  dif = 6
end

def update
	degree += dif
	rad = degree * PI / 180
	x += cos(-rad)
  y += sin(-rad)
end

def draw
  @piece.draw(x, y, 1)
end
```

ここで

```ruby
def update
	degree += dif
	rad = degree * PI / 180
	x += a * dif * cos(-rad)
  y += b * dif * sin(-rad)
end
```

lap -> dif

update -> 1/60 sec

lap = 3.3 sec/100m

lap = 360 / 5 = 72 agree

72 agree / lap -> 1秒あたりの角度

72 agree / lap * 1/60sec -> 1updateあたりの角度

72 / lap * 1/60 = (72 * 1) / (lap * 60) = 72/(60*lap) = 1.2 lap 

dif = (360 / 5) * 1/60sec / lap = 1.2 lap

