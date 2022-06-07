# Task 1: Understanding what the microscope says

Here the script you will use for task 1:

```java
{{#include scripts/1-BeamShift.s}}
```

Can you describe what this script does?

Execute this script in Digital Micrograph and note what is written in the Result
window.

What do you think these values are? To which parameters are they linked?

In general, there is no documentation associated with the control of the
microscope. To determine the response of each controllable element of the
microscope, you have to proceed to retro-engineering: under different conditions
(magnification, mode,...), measure the min and max bounds, and the minimum step.
For elements with 2 variables (in general x and y), check if both variables act
with the same weight.
