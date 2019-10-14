/// @description  game state and success?
// You can write your code in this editor

#region Startgame and end game
//start the game by hitting spacebar also  alarm for bounce
if(keyboard_check(vk_space) && global.game_start == false){	
	global.game_start = true; //start the game
	global.globtime = 0;
	show_debug_message("The game has started")
	//start alarm
	alarm [0] = .5*room_speed;
	//change the score to zero
	
	if (audio_is_playing(audio_stereo)=false){
		audio_play_sound(Current_Song,1,1);
	//if music isn't playing - play music at start - then choose a new random song
	randomize();
	random_pos_song = irandom (ds_list_size (song_list)-1); 
		Current_Song = song_list [|random_pos_song]; 
		
	}
	
	with obj_ui {
		current_score = 0;
	
	}
	
}
//don't play music if the game isn't going
if (global.game_start == false) {
	audio_stop_all();
	instance_create_depth(40,679,-10,BlackoutUI);
	
}

#endregion

#region keeping the camera locked

if (
camera_get_view_x(view_camera[0]) > 120 ||
camera_get_view_x (view_camera[0]) < 80 ||
camera_get_view_y(view_camera[0]) > 170 ||
camera_get_view_y(view_camera[0])< 130  ){

camera_set_view_pos(view_camera[0],100,150);
}

#endregion


#region timer logic

if (global.game_start == true){
	//removing time from the timer, this will be a countdown for the next 
	//letter
	
global.timer--;
global.globtime++;

}

if (global.timer <= 0){
	//reset timer when you fail
	global.game_start = false;
	global.timer = timer_amt*room_speed;

	//reset score
	with obj_ui {
		current_score = 0;
	}
	
}

#endregion


#region body wiggle tests
	//move that body a litte - should choose random body part
	if(global.game_start == true){
	randomize();
	body_wiggle(irandom_range(-5,5),global.bodyPart);
	 //show_debug_message("I wiggled a little");
	}
#endregion


//bounce to the music (half second beats)
if(global.game_start == true){
	q_timer--;
	if(q_timer > 0 && q_timer < .5*room_speed){
	Screen_shake_ryth(camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]),10);
	show_debug_message("The screen shooketh")

	}
	
	if(q_timer <= 0){
	q_timer = 1*room_speed; 
	}
}

