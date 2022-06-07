# Task 3: Reconstructing a Square Image from Small Spots

<div style="text-align: center"><img src="diagram2.svg"></div>

The goal of this part is to reconstruct a square image by scanning the spot with
the beam shift coils in both camera directions, as a “STEM” based method.

Open the <a href="scripts/View.dm4" download>“View” image</a>, as well as the
following script, in Digital Micrograph:

```java
{{#include scripts/3-SquareThread.s}}
```

You can see the structure of the process to complete. The variables correspond
to the size of the square, the number of points constituting each side, the
waiting time between each point. An image (`img_sum`) is created and will
represent the integration of all the recorded spots.

We ask you to complete the missing part in order to scan the spot from left to
right, and from top to bottom, in order to reconstruct a square image of defined
size and number of points, and centered at the initial beam position (here middle
of the image). 

To do this, at some point in the program you will need to add the line to
integrate `img_sum`:

```java
img_sum = Tert(img> Mean(img), img, img_sum)
```

In addition, print `x` and `y` positions of the beam into the Result window, and
respect a waiting time between each spot. Don't forget to add the `Control +
Shift` break in order to stop the process at any time.

~~~admonish example title="Solution" collapsible=true
```java
{{#include scripts/final/3-SquareThreadFinal.s}}
```
~~~
