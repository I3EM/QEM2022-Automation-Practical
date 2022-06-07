number xpos, ypos, xpos_mem, ypos_mem

EMGetBeamShift(xpos_mem, ypos_mem)

If (!OkCancelDialog("Move the beam with x and y buttons.\nPush on Ok when finished."))
	exit(0)

EMGetBeamShift(xpos, ypos)

Result("\nxpos mem = " + xpos_mem + "\typos mem = " + ypos_mem + "\n")
Result("xpos = " + xpos + "\typos = " + ypos+"\n")
Result("Delta x = " + (xpos-xpos_mem) + "\tDelta y = " + (ypos-ypos_mem) + "\n")
Result("Delta rho = " + sqrt((xpos-xpos_mem)**2 + (ypos-ypos_mem)**2) + "\n")

EMSetBeamShift(xpos_mem, ypos_mem)