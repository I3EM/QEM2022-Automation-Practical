Class Automation_Thread : object
{
	// Variables
	number count, radius, angle, nbpoints
	number xpos, ypos, xpos_mem, ypos_mem, xpos_delta, ypos_delta
	number wait
	image img, img_sum

	void init(object self, image img_init, image img_sum_init, number nbpoints_init,\
		number radius_init, number xpos_delta_init, number ypos_delta_init,\
		number wait_init)
	{
		img := img_init
		img_sum := img_sum_init

		nbpoints = nbpoints_init
		radius = radius_init
		xpos_delta = xpos_delta_init
		ypos_delta = ypos_delta_init
		wait = wait_init
	}

	void Automation(object self)
	{
		// Acquisition of the inital beam position
		EMGetBeamShift(xpos_mem, ypos_mem)

		// Writing in the result window
		Result("\n"+DateStamp()+": "+xpos_mem+"\t"+ypos_mem+"\n")

		// Modification of the beam position
		While (1<2) // Infinite loop
		{
			// For loop
			For (count=0; count<abs(nbpoints); count++)
			{
				xpos = xpos_mem+xpos_delta+radius*cos(2*pi()*count/nbpoints)
				ypos = ypos_mem+ypos_delta+radius*sin(2*pi()*count/nbpoints)

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


// Variable initialization
number nbpoints, radius, xpos_delta, ypos_delta, wait
image img, img_sum

// Pointer on the view image
img := GetFrontImage()

// New image for the final result
img_sum = img*0
SetName(img_sum, GetName(img)+" Sum Image")
ShowImage(img_sum)

// Radius : to be adjusted !
radius = 100

// Wait time : delay between two successive instructions
wait = 0.2

// Nb of points : 3 points = Triangle, 4 = Square, 5 Pentagone, etc.
// Many points for circle
nbpoints = 20

// If we want to move the circle centre
xpos_delta = -radius
ypos_delta = 0

// Main function
// Creation and allocation of the object
object object_o = Alloc(Automation_Thread)

// Thread init
object_o.init(img, img_sum, -nbpoints, radius, xpos_delta, ypos_delta, wait)

// Thread launch
object_o.StartThread("Automation")


// Creation and allocation of the 2nd object
object object2_o = Alloc(Automation_Thread)

// Thread init
//void init(object self, image img, number nbpoints, number radius, number xpos_delta, number ypos_delta, number wait)
object2_o.init(img, img_sum, nbpoints, -radius, -xpos_delta, ypos_delta, wait)

// Thread launch
object2_o.StartThread("Automation")
