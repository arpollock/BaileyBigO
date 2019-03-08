/// @description Insert description here
// You can write your code in this editor

//check if bailey collided with a turtle
if (position_meeting(x,y,obj_bailey)){
	//whack bailey
	if (obj_bailey.hp_cooldown == 0){
		obj_bailey.hp--;	
		obj_bailey.hp_cooldown = 100;
	}
}

else if (position_meeting(x,y-obj_turtle.sprite_height,obj_bailey)){
	//check that bailey jumped on the right turtle
	if (sprite_index == spr_turtle2 ){
		//whack bailey
		if (obj_bailey.hp_cooldown == 0){
			obj_bailey.hp--;	
			obj_bailey.hp_cooldown = 100;
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

// Check if nelly collided with turtle
if (position_meeting(x,y,obj_nelly)){
	//whack nelly
	if (obj_nelly.hp_cooldown == 0){
		obj_nelly.hp--;	
		obj_nelly.hp_cooldown = 100;
	}
}

else if (position_meeting(x,y-obj_turtle.sprite_height,obj_nelly)){
	//check that Nelly jumped on the right turtle
	if (sprite_index == spr_turtle1){
		//whack nelly
		if (obj_nelly.hp_cooldown == 0){
			obj_nelly.hp--;	
			obj_nelly.hp_cooldown = 100;
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
if (obj_bailey.hp_cooldown > 0){
	obj_bailey.hp_cooldown--;
}
if (obj_nelly.hp_cooldown > 0){
	obj_nelly.hp_cooldown--;
}



