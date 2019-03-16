/// @description Insert description here
// You can write your code in this editor
//if (!carried){
	if(pos <= stride){
		x += spd;
		image_xscale = 1;
	}
	else if(pos > stride and pos <= stride*2){
		x -= spd;	
		image_xscale = -1;
	}
	else{
		pos = 0;
	}
	pos+=spd;
	
	
	if( place_meeting(x, y, obj_pipe) ){ // is there a collision
		visible = false;
		//instance_destroy();		
		start_timer = true;
	}
	
	if (start_timer){
		timer++;
	}
	
	if (room_speed * timer == 30){
		visible = true;
		timer = 0;
		start_timer = false;
	}
//}
/*
if( place_meeting(x+horizontalSpeed, y, obj_pipe) ){ // is there a collision
		// yes, don't move there, move as close as possible
		while( !place_meeting(x+1, y, obj_pipe) ){
			x=x+1;
		}
		horizontalSpeed = 0;
	}
if keyboard_check(vk_left){
   timer += 1;
}

//once timer reaches 30 steps, move player 32 pixels to the left
if timer = 30{
   x = (x - 32);

   //reset the timer so we can do it multiple times
   timer = 0;
}
*/