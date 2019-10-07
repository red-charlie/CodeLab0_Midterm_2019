var rotspeed = argument0;
var obj   = argument1;
//var timer;


//randomly rotate on pivot point for a certain amount of time. 
//does this function like a step if it's called in step? (spoiler alert, no) let's see.
//also wondering if I can use a with statement here

with obj {
	
image_angle += rotspeed;
}

 //Have to do the timer else where
 /*timer = time*room_speed;
 timer --;
 
 
 
 if(timer = 0){
rotspeed = 0;
 }
 
*/