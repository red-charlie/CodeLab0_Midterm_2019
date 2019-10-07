/// @description  game state and success?
// You can write your code in this editor


//start the game by hitting spacebar
if(keyboard_check(vk_space) && game_start == false){	
	game_start = true; //start the game
	show_debug_message("The game has started")
	//change the score to zero
	with obj_ui {
		current_score = 0;
	}
	
}

	

#region timer logic

if (game_start == true){
	//removing time from the timer, this will be a countdown for the next 
	//letter
	
global.timer--;

}

if (global.timer <= 0){
	game_start = false;
	current_score = 0;
	global.timer = 5*room_speed;
	
	
}

#endregion
