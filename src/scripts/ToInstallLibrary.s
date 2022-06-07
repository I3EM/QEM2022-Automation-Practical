void EMSetBeamShift(number xpos, number ypos)
{
	image img, img_temp

	img := FindImageByName("View")

	img_temp = img = 0

//	img = Tert(sqrt((icol-xpos)**2+(irow-ypos)**2)) < radius, 1, 0)

//	If (sqrt((icol-xpos)**2+(irow-ypos)**2) < radius) img = 1

	img_temp = iradius < 15
	img_temp *= Random()+0.5

	img = Warp(img_temp, icol-xpos, irow+ypos)
}

void EMGetBeamShift(number &xpos_mem, number &ypos_mem)
{

}
