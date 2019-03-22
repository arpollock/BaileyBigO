/// @description Insert description here
// You can write your code in this editor

//check if bailey collided with a turtle
if (place_meeting(x,y,obj_bailey_l3)){
	//whack bailey
	if (obj_bailey_l3.hp_cooldown == 0){
		obj_bailey_l3.hp--;	
		obj_bailey_l3.hp_cooldown = 100;
	}
}

else if (position_meeting(x,y-obj_turtle.sprite_height,obj_bailey_l3)){
	//check that bailey jumped on the right turtle
	//if (instance_exists(spr_turtle2){
		if (sprite_index == spr_turtle2 ){
			//whack bailey
			if (obj_bailey_l3.hp_cooldown == 0){
				obj_bailey_l3.hp--;	
				obj_bailey_l3.hp_cooldown = 100;
			}
		}
		//if its the right turtle, kill it
		else{
			instance_destroy();
		}
	//}
}
else{
	//do nothing
}

//make sure a turtle exists 
if (instance_exists(obj_turtle)){
	// Check if nelly collided with turtle
	if (place_meeting(x,y,obj_nelly_l3)){
		//whack nelly
		if (obj_nelly_l3.hp_cooldown == 0){
			obj_nelly_l3.hp--;	
			obj_nelly_l3.hp_cooldown = 100;
		}
	}

	else if (position_meeting(x,y-obj_turtle.sprite_height,obj_nelly_l3)){
		//check that Nelly jumped on the right turtle
		if (sprite_index == spr_turtle1){
			//whack nelly
			if (obj_nelly_l3.hp_cooldown == 0){
				obj_nelly_l3.hp--;	
				obj_nelly_l3.hp_cooldown = 100;
			}
		}
		//if its the right turtle, kill it
		else{
			instance_destroy();
		}
	}
	else{
		//do nothing
	}
}


if(pos <= stride){
	//Horizontal Collision
	if (place_meeting(x+spd,y,obj_platform)){
		 x -= spd;	
		image_xscale = -1;
		pos = stride + 1;
	}
	else{
		x += spd;
		image_xscale = 1;
	}
}
else if(pos > stride and pos <= stride*2){
	//Horizontal Collision
	if (place_meeting(x-spd,y,obj_platform)){
		 x += spd;	
		image_xscale = 1;
		pos = 0;
	}
	else{
		x -= spd;
		image_xscale = -1;
	}
}
else{
	pos = 0;
}

pos+=spd;



//Fall off platforms
verticalSpeed = verticalSpeed + grav
if( place_meeting(x, y+verticalSpeed, obj_platform) ){
	while( !place_meeting(x, y+sign(verticalSpeed), obj_platform) ){
		y=y+sign(verticalSpeed);
	}
	verticalSpeed = 0;
}
y = y + verticalSpeed;

//hp_cooldown update
if (obj_bailey_l3.hp_cooldown > 0){
	obj_bailey_l3.hp_cooldown--;
}
if (obj_nelly_l3.hp_cooldown > 0){
	obj_nelly_l3.hp_cooldown--;
}
//check if nelly died
if (obj_nelly_l3.hp==0){
	room_restart();
}
//check if bailey died
if (obj_bailey_l3.hp==0){
	room_restart();
}


