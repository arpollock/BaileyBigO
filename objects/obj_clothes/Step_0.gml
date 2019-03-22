/// @description Insert description here
// You can write your code in this editor
if(pickedUp){
	x = holder.x
	y = holder.y 
}
if(cooldown < 0 and pickedUp == false 
	and place_meeting(x, y, obj_bailey) 
	and keyboard_check(obj_bailey.pickUpKey)){
	pickedUp = true
	cooldown = max_cooldown
	holder = obj_bailey
}
if(cooldown < 0 and keyboard_check(obj_bailey.pickUpKey)){
	pickedUp = false
	cooldown = max_cooldown
	holder = obj_bailey
}
if(cooldown < 0 and pickedUp == false 
	and place_meeting(x, y, obj_nelly) 
	and keyboard_check(obj_nelly.pickUpKey)){
	pickedUp = true
	cooldown = max_cooldown
	holder = obj_nelly
}
if(cooldown < 0 and keyboard_check(obj_nelly.pickUpKey)){
	pickedUp = false
	cooldown = max_cooldown
	holder = obj_nelly
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