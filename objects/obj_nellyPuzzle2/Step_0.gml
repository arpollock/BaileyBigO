/// @description Insert description here
// You can write your code in this editor
horizontalSpeed = walkSpeed;
if(obj_puzzle2.binarySearch and cooldown < 0 and keyboard_check(rightKey) and obj_puzzle2.position < 10){ // move right
	
	image_xscale = 1;
	x = x + horizontalSpeed;
	cooldown = max_cooldown;
	obj_puzzle2.position++;
	
}
if(obj_puzzle2.binarySearch and cooldown < 0 and keyboard_check(leftKey) and obj_puzzle2.position > 0 ){ // move right
	
	image_xscale = -1;
	x = x - horizontalSpeed;
	cooldown = max_cooldown;
	obj_puzzle2.position--;
	
}
cooldown--;