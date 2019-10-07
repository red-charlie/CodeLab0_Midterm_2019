// screen shake for successful attempts - juice shake

//took this from our in-class excersize on room shake and camera stuff. 
var xpos=argument0;
var ypos=argument1;
var shake_amt = argument2;

camera_set_view_pos(view_camera[0],
	xpos- camera_get_view_width(view_camera[0])/2 + random_range(-shake_amt,shake_amt),
	ypos- camera_get_view_height(view_camera[0])/2 + random_range (-shake_amt,shake_amt))
	