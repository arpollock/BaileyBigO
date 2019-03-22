/// @description Insert description here
// You can write your code in this editor
horizontalSpeed = walkSpeed;
if(obj_puzzle2.binarySearch and cooldown < 0 and keyboard_check(rightKey) and obj_puzzle2.position < 10){ // move right
	
	image_xscale = 1;
	if( place_meeting(x+horizontalSpeed, y, obj_platform) ){ // is there a collision
		// yes, don't move there, move as close as possible
		while( !place_meeting(x+1, y, obj_platform) ){
			x=x+1;
		}
		horizontalSpeed = 0;
	}
	x = x + horizontalSpeed;
	cooldown = max_cooldown;
	obj_puzzle2.position++;
	
}
if(obj_puzzle2.binarySearch and cooldown < 0 and keyboard_check(leftKey) and obj_puzzle2.position > 0 ){ // move right
	
	image_xscale = -1;
	if( place_meeting(x+horizontalSpeed, y, obj_platform) ){ // is there a collision
		// yes, don't move there, move as close as possible
		while( !place_meeting(x+1, y, obj_platform) ){
			x=x+1;
		}
		horizontalSpeed = 0;
	}
	x = x - horizontalSpeed;
	cooldown = max_cooldown;
	obj_puzzle2.position--;
	
}
cooldown--;