// this is the screen shake for when the skeleton is dancin' ...Trying to find music to match it up to



//a gentler shake that bounces along to the music I don't have yet.

var xpos=argument0;
var ypos=argument1;
var bounce_amt = argument2;

//trying to figure out the positioning of this



camera_set_view_pos(view_camera[0],
	 xpos + random_range(-bounce_amt,bounce_amt),
 ypos + random_range (-bounce_amt,bounce_amt)
	);
	