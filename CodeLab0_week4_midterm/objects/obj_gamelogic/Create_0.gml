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

global.game_start = false;
timer_amt = 3;
q_timer = 1*room_speed; 
// changing alarm stuff to timer stuff probably
global.timer = timer_amt*room_speed;
global.globtime = 0;

#region random body parts
randomize();
//random seed

// random body part
body_list = ds_list_create(); //all the body parts?
ds_list_add(body_list,
obj_skeletonFoot,
obj_skeletonHand,
obj_skeletonArml,
obj_skeletonArmu,
obj_skeletonCalf,
obj_skeletonFoot,
obj_skeletonHead,
obj_skeletonHips,
obj_skeletonThigh,
obj_skeletonTorso
);

random_pos_body = irandom(ds_list_size(body_list)-1); // random 
global.bodyPart = body_list [|random_pos_body]; //random part of the body list
#endregion

#region MusicSelection
//make the list
song_list = ds_list_create();

//add the songs to the list
ds_list_add(song_list, Heist, City, Crowd); 

//random list
random_pos_song = irandom(ds_list_size(song_list)-1);

//random part of song list
Current_Song = song_list [|random_pos_song];


#endregion
