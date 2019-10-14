/// @description Insert description here
// You can write your code in this editor

draw_self();

#region instructions
//set font - the big font
draw_set_font(fnt_score);

//align font - mid
draw_set_halign(fa_middle);
draw_set_valign(fa_middle);

//the same as scores - keeps at the bottom
draw_text_color(
	camera_get_view_x(view_camera[0])+400, 
	camera_get_view_y(view_camera[0])+630,
	"TYPE THE CORRECT LETTERS TO MAKE THE SKELETON DANCE!~ \n YOU ONLY HAVE THREE SECONDS TO KEEP THE GROOVE GOING! \n PRESS SPACE TO BEGIN! \n YOUR LONGEST GROOVE SESSION WAS  "
	+ string(global.high_score) + "  long!",
	c_white,
	c_white,
	c_white,
	c_white,
	1
	)

#endregion