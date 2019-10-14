/// @description draw bottom of the screen/camera/viewport
// You can write your code in this editor




#region current Score

//set font
draw_set_font(fnt_score);

//align font
draw_set_halign(fa_middle);
draw_set_valign(fa_middle);

//keep in the bottom of the screen even when it shakes? camera_get_view +???
draw_text_color(
	camera_get_view_x(view_camera[0])+400, 
	camera_get_view_y(view_camera[0])+600,
	"You have made  " + string(current_score) + "  ridiculous dance moves!",
	c_white,
	c_white,
	c_white,
	c_white,
	1
	)

#endregion

#region high Score

//set font
draw_set_font(fnt_score);

//align font
draw_set_halign(fa_middle);
draw_set_valign(fa_middle);

//literally the same as before - stays in the bottom as screenshakes
draw_text_color(
	camera_get_view_x(view_camera[0])+400, 
	camera_get_view_y(view_camera[0])+650,
	"Your longest groove session was " + string(high_score) + "  long!",
	c_white,
	c_white,
	c_white,
	c_white,
	1
	)

//Note to Self - please alter color for this one later!
#endregion


#region timer
//set font - the big font
draw_set_font(fnt_score);

//align font - mid
draw_set_halign(fa_right);
draw_set_valign(fa_middle);

//the same as scores - keeps at top
draw_text_color(
	camera_get_view_x(view_camera[0])+700, 
	camera_get_view_y(view_camera[0])+50,
	string(global.timer/room_speed),
	c_white,
	c_white,
	c_white,
	c_white,
	1
	)

#endregion
