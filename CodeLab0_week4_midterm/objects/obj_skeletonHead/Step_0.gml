/// @description wiggle_head
// You can write your code in this editor

//just getting the head to wiggle right now. I want to have different parts of the bones move independant randomly...
//if (keyboard_check(current_letter)){
//	direction = -3;

//}

//sad if not dancing - chooses second face
if (global.game_start == false) {
	image_index = 1;
} 
//happy when dancing - chooses first face index
else {
	image_index = 0;
}

