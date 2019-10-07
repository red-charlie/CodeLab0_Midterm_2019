/// @description Letter to type - draw
// You can write your code in this editor

draw_self();

//set font
draw_set_font(fnt_typing);

//align font
//draw_set_halign(fa_middle);
//draw_set_valign(fa_middle);

//Current letter being drawn on the box
draw_text_color(
	x + sprite_width/2,
	y + sprite_height/2,
	
	//"testing testing hello?",
	current_letter,
	
	c_white,
	c_white,
	c_white,
	c_white,
	1
	)
	
	//currently just white text. Should probably match that purple