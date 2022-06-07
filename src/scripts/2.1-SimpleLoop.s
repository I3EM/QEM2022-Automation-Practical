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
