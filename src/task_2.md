# Task 2: Background Threading

Automation consists to repeat one or several instructions: the while or for loop
thus are mandatory. However, launching a process in a loop directly from a
"simple" script blocks all other processes such as the acquisition of images by
the camera and prevents any other access to Digital Micrograph.

For example, launch the following script, and try to interact with Digital
Micrograph (eg: open another file or move the window).

```java
{{#include scripts/2.1-SimpleLoop.s}}
```

To end the script, press `Control + Shift` on the keyboard for at least 1 second.

This problem can be solved if using a background thread. It corresponds to an
object created from a class of functions. The process that we wish to execute in
background corresponds to one of the functions (`MyFunction`) of the class
`Thread_Test`.

Open the following script and compare it to the previous one.

```java
{{#include scripts/2.2-BackgroundThreadSimpleLoop.s}}
```

Execute the script: what do you observe? *(Stop the process by pressing on
`Control + Shift` for 1 second.)*

Now replace `MyObject.MyFunction()` with `MyObject.StartThread("MyFunction")`
into the script and execute it now again. The process is running but you keep a
full control of others functionalities. A new execution will launch a second
process etc. However you have to keep in your mind that processes are running
and could create problems (memory, conflicts,…) : it is always necessary to
define a solution to stop or pause the processes automatically or manually, and
to keep a control and a view of all background processes you can launch.

Now you have all information for starting a full automation process!
