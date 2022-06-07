# Task 6: Synchronization

The thread-object allows multiple parts of a script to be run on separate
threads. Those threads execute completely independent of each other. However,
often some form of communication between threads is needed. Either, because
multiple threads share a common resource (an image, a tag, a global variable or
object…) and mustn’t access/alter it at the same time, or because actions need
to be synchronized. A typical example would be a script which acquires data from
multiple detectors at different speed – each on a separate thread – and wants to
do something with all data once all detectors have returned their signal.
Another example would be a script which has a ‘controlling’ thread acting on
user input, and several ‘work threads’ performing calculations or other actions
which may be interrupted by user action. The scripting language offers a whole
range of ‘synchronizations objects’, but we will here demonstrate a ‘simple’
solution.

The critical-section object is the simplest of blocking-objects. Its goal is to
prevent different threads from accessing the same resources. The principle is
similar to that of multiple people sharing one TV remote control: Only one of
them can control the TV set, and the others have to wait until the remote
control is handled back before they can grab it.

A new critical-section object is created using `NewCriticalSection()`. A thread
can try grabbing it, using the `Acquire()` command. If the critical-section is
available, the command will return a script object and the critical-section
becomes unavailable until this object is removed from memory again. If the
critical-section is not available, a thread will wait until it becomes available
before continuing. If one wants to destroy a handle manually (before the end of
the routine is reached), one can do this by setting the handle-object `NULL`
explicitly. To summarize:
- Creation of the critical-section object to share between threads:
  ```java
  object CS = NewCriticalSection()
  ```
- Grab the critical-section if available, block if not:
  ```java
  object CS_handle = CS.Acquire()
  ```
- Release the critical-section:
  ```java
  CS_handle = NULL
  ```


Your work consists to introduce this blocking object in the previous script in
order to synchronize the thread and to draw the infinity symbol as requested in
task 5.

~~~admonish example title="Solution" collapsible=true
```java
{{#include scripts/final/6-InfinitySymbolFinalSync.s}}
```
~~~

