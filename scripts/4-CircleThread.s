Class Automation_Thread : object
{
	// Variables
	number i, j
	number count, size, nbpoints
	number xpos, ypos, xpos_mem, ypos_mem
	number wait

	image img, img_sum


	void Automation(object self)
	{
		// Square size
		size = 100

		// Wait time : delay between two successive instructions
		wait = 0.1

		// Nb of points per line or column
		nbpoints = 7

		// Acquisition of the inital beam position
		EMGetBeamShift(xpos_mem, ypos_mem)

		// Writing in the result window
		Result("\n"+DateStamp()+": "+xpos_mem+"\t"+ypos_mem+"\n")

		// Acquisition of View, creation and display of the final image (img_sum)
		img := GetFrontimage()
		img_sum = img*0

		SetName(img_sum, GetName(GetFrontImage())+" Sum Image")
		ShowImage(img_sum)


		// Modification of the beam position
		While (1<2) // Infinite loop
		{


			If (ControlDown() && ShiftDown()) break
		}

		// Go back to the initial beam position
		EMSetBeamShift(xpos_mem, ypos_mem)

		Result("End"+"\n")
	}
}


// Main function
// Creation and allocation of the object
object object_o = Alloc(Automation_Thread)


// Thread launch
object_o.StartThread("Automation")
