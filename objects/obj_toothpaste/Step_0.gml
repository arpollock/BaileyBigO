/// @description Insert description here
// You can write your code in this editor
if(pickedUp){
	x = holder.x;
	y = holder.y - 15;
	verticalSpeed = 0;
	depth = -10;
}
if(cooldown < 0 and pickedUp == false 
	and place_meeting(x, y, obj_bailey) 
	and keyboard_check(obj_bailey.pickUpKey)
	and obj_bailey.holding == false){
	pickedUp = true
	cooldown = max_cooldown
	holder = obj_bailey
	obj_bailey.holding = true;
}
if(cooldown < 0 and keyboard_check(obj_bailey.pickUpKey) and holder == obj_bailey){
	pickedUp = false
	obj_bailey.holding = false;
	cooldown = max_cooldown
}
if(cooldown < 0 and pickedUp == false 
	and place_meeting(x, y, obj_nelly) 
	and keyboard_check(obj_nelly.pickUpKey)
	and obj_nelly.holding == false){
	pickedUp = true
	cooldown = max_cooldown
	holder = obj_nelly
	obj_nelly.holding = true;
}
if(cooldown < 0 and keyboard_check(obj_nelly.pickUpKey) and holder == obj_nelly){
	pickedUp = false
	obj_nelly.holding = false;
	cooldown = max_cooldown
}
cooldown = cooldown - 1

// Falling
verticalSpeed = verticalSpeed + grav
if( place_meeting(x, y+verticalSpeed, obj_platform) ){
	while( !place_meeting(x, y+sign(verticalSpeed), obj_platform) ){
		y=y+sign(verticalSpeed);
	}
	verticalSpeed = 0;
}
y = y + verticalSpeed;