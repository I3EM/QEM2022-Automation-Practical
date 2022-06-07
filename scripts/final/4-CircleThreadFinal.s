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
		wait = 0.2

		// Nb of points per line or column
		nbpoints = 20

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
			For (i=0; i<nbpoints; i++)
			{
				xpos = size*cos(2*pi()*i/nbpoints)
				ypos = size*sin(2*pi()*i/nbpoints)

				EMSetBeamShift(xpos, ypos)

				If (ControlDown() && ShiftDown()) break

				// Writing in the result window
				Result(xpos+"\t"+ypos+"\n")

				sleep(wait)

				// We replace the modified part coming from the new acquisition
				img_sum = Tert(img> Mean(img), img, img_sum)
	
			}

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
