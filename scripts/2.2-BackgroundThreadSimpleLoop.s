Class Thread_Test : object
{
	void init(object self) {}

	void MyFunction(object self)
	{
		While (1<2)
		{
			// Date and time in the Result Window
			Result(DateStamp()+"\n")

			// Wait 1s
			sleep(1)

			// Break the loop and stop the process
			If (ControlDown() && ShiftDown()) break
		}

		Result("End of my loop\n")
	}
}

// Create an object from the class Thread_test
object MyObject = Alloc(Thread_Test)

// Launch the function
MyObject.MyFunction()
