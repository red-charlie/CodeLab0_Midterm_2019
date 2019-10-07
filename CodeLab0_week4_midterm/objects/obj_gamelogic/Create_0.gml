/// @description Checklist and game logic var
// You can write your code in this editor

/*Goals for this game quicklist
x-typing correct letters
x-score and highscore
-full start menu
-audio
x-bounce to "music"
-bounce correctly to music (camera view is off right now)
-bounce for correct letter (with correct camera view)
-timer/time left to get correct letter
-still need to find somesort of music for this
-the skeleton should "dance/move" everytime you press a key
*/

game_start = false;
//alarm [0] = .5*room_speed;
// changing alarm stuff to timer stuff probably
global.timer = 5*room_speed;

randomize();
//random seed

// random body part
body_list = ds_list_create(); //all the body parts?
ds_list_add(body_list,
obj_skeletonArml,
obj_skeletonArmu,
obj_skeletonCalf,
obj_skeletonFoot,
obj_skeletonHand,
obj_skeletonHead,
obj_skeletonHips,
obj_skeletonThigh,
obj_skeletonTorso
);

random_pos_body = irandom(ds_list_size(body_list)-1); // random 
global.bodyPart = body_list [|random_pos_body]; //random part of the body list
