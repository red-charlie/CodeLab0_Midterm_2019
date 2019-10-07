/// @description check correct letter
// You can write your code in this editor

//check for correct letter
if(keyboard_check_pressed(ord(current_letter))){
	
	//get new random stuff - letter from bag
	random_pos_letter = irandom(ds_list_size(letter_list)-1); // randomize again
	current_letter = letter_list [|random_pos_letter]; //random part o' list
	ds_list_delete (letter_list, random_pos_letter); //remove from possible letters
	
	
	//refill alphabet bag - if empty
	if (ds_list_empty(letter_list)){
	ds_list_copy(letter_list, full_letter_list);
	}
	

	//reset game timer 
	global.timer = 5*room_speed;
	
	
	//get random body part
	with obj_gamelogic{
		//ugh, this is a lot - but it's the same as the letter picker
		random_pos_body = irandom (ds_list_size (body_list)-1); //randomize the thing
		global.bodyPart = body_list [|random_pos_body]; //random part of the list
		
	}
	
	//move that body a litte - should choose random body part
	body_wiggle(45,global.bodyPart)
	//add to current score
	with obj_ui {
		current_score += 1; 
			}	
			
	//correct screen wiggle - need to get the timing/screen location working on this
	//Screen_shake_norm(x,y,6);
	
}




