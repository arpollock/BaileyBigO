/// @description Insert description here
// You can write your code in this editor
horizontalSpeed = walkSpeed;
if(!obj_puzzle2.binarySearch and cooldown < 0 and keyboard_check(rightKey) ){ // move right
	
	image_xscale = 1;
	if( place_meeting(x+horizontalSpeed, y, obj_platform) ){ // is there a collision
		// yes, don't move there, move as close as possible
		while( !place_meeting(x+1, y, obj_platform) ){
			x=x+1;
		}
		horizontalSpeed = 0;
	}
	if( place_meeting(x+horizontalSpeed, y, obj_nelly) ){ 
		horizontalSpeed = 0;
	}
	x = x + horizontalSpeed;
	cooldown = max_cooldown;
	obj_puzzle2.position++;
	
}
cooldown--;

if(obj_puzzle2.position == 10){
	if(index < 11){
		index++;
	}
	x = 190 + index*64;
	obj_puzzle2.position = index;
}