# Task 5: Infinity Symbol

<div style="text-align: center"><img src="diagram3.svg"></div>

In this part, we propose to draw the infinity symbol using the spot and a
“Circle thread” script. This symbol can be created from two identical circles
but with their centres offset horizontally by twice the radius. For this
purpose, each circle will be created from a background thread. Therefore, two
background threads must be launched in parallel, each corresponding to a circle
with a different centre. The starting point is the initial beam position given
by the red dot at the intersection of both circles, and your drawing should
follow the direction of the red arrows.

Open the following script:

```java
{{#include scripts/5-InfinitySymbol.s}}
```

This script allows you to modify the centre of the circle, the radius and the
direction of rotation independently. We advise you to analyze this script then
to manipulate it by modifying the variables to be able to control the position
of the centre of the circle, the starting point and the direction of rotation.

Finally, run two background threads in parallel by creating two different
objects from the same class to draw the infinity symbol as requested.

What do you observe? Explain what is going on.

~~~admonish example title="Solution" collapsible=true
```java
{{#include scripts/final/5-InfinitySymbolFinal.s}}
```
~~~
