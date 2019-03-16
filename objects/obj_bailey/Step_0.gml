/// @description Insert description here

// var  = keyword for temporary, only one frame
// might switch to right minus left check so doesn't move when both are pressed
// Horizontal Movement
horizontalSpeed = walkSpeed;
if( keyboard_check(leftKey) ){ // move left
	
	sprite_index = spr_baileyWalk;
	image_xscale = -1;
	if( place_meeting(x-horizontalSpeed, y, obj_platform) ){ // is there a collision
		// yes: don't move there, move as close as possible
		while( !place_meeting(x-1, y, obj_platform) ){
			x=x-1;
		}
		horizontalSpeed = 0;
	}
	if( place_meeting(x-horizontalSpeed, y, obj_pipe) ){ // is there a collision
		// yes: don't move there, move as close as possible
		while( !place_meeting(x-1, y, obj_pipe) ){
			x=x-1;
		}
		horizontalSpeed = 0;
	}
	if( place_meeting(x-horizontalSpeed, y, obj_nelly) ){ 
		horizontalSpeed = 0;
	}
	x = x - horizontalSpeed;
	
}else if( keyboard_check(rightKey) ){ // move right
	
	sprite_index = spr_baileyWalk;
	image_xscale = 1;
	if( place_meeting(x+horizontalSpeed, y, obj_platform) ){ // is there a collision
		// yes, don't move there, move as close as possible
		while( !place_meeting(x+1, y, obj_platform) ){
			x=x+1;
		}
		horizontalSpeed = 0;
	}
	if( place_meeting(x+horizontalSpeed, y, obj_pipe) ){ // is there a collision
		// yes, don't move there, move as close as possible
		while( !place_meeting(x+1, y, obj_pipe) ){
			x=x+1;
		}
		horizontalSpeed = 0;
	}
	if( place_meeting(x+horizontalSpeed, y, obj_nelly) ){ 
		horizontalSpeed = 0;
	}
	x = x + horizontalSpeed;
	
}else{ // not walking, stop animation
	sprite_index = spr_bailey;
}

// Jumping
// only jump from ground: place_meeting(x, y+1, obj_platform)
// double jump logic: on the ground? -> set jump count to max
// if jump, jump and jump -= 1
if( place_meeting(x, y+1, obj_platform) || place_meeting(x, y+1, obj_nelly)){ // on floor, reset jumps
	jumps = MAX_JUMPS;
}
if( place_meeting(x, y+1, obj_pipe) || place_meeting(x, y+1, obj_nelly)){ // on floor, reset jumps
	jumps = MAX_JUMPS;
}
if( keyboard_check_pressed(jumpKey) && jumps > 0 ){ // pressed is needed to keep from depleting all
	verticalSpeed = jumpVal;
	jumps -= 1;
}else if( place_meeting(x, y, obj_platform) ){ // on ground not jumping
	verticalSpeed = 0;
}
else if( place_meeting(x, y, obj_pipe) ){ // on ground not jumping
	verticalSpeed = 0;
}

// TODO: implement crouch
if( keyboard_check(crouchKey) ){ // crouch
	
}

// Falling
verticalSpeed = verticalSpeed + grav
if( place_meeting(x, y+verticalSpeed, obj_platform) ){ // is there a collision?
	// yes, don't fall completely, fall to floor 
	while( !place_meeting(x, y+sign(verticalSpeed), obj_platform) ){
		y=y+sign(verticalSpeed);
	}
	verticalSpeed = 0;
}
if( place_meeting(x, y+verticalSpeed, obj_pipe) ){ // is there a collision?
	// yes, don't fall completely, fall to floor 
	while( !place_meeting(x, y+sign(verticalSpeed), obj_pipe) ){
		y=y+sign(verticalSpeed);
	}
	verticalSpeed = 0;
}
if( place_meeting(x, y+verticalSpeed, obj_nelly) ){ 
	while( !place_meeting(x, y+sign(verticalSpeed), obj_nelly) ){
		y=y+sign(verticalSpeed);
	}
	verticalSpeed = 0;
}
y = y + verticalSpeed;

if(!(place_meeting(x, y + 1, obj_platform)) && !(place_meeting(x,y+1,obj_nelly))){
	sprite_index = spr_baileyJump;
}



//check if q is pressed to quit the game
if (keyboard_check(ord("Q"))){
	room_goto(room_quit);
}
if( place_meeting(x+horizontalSpeed, y, obj_binaryBird) ){ // is there a collision
	if (global.has_item = false){
		pickup = obj_binaryBird.id;
		//obj_binaryBird.carried = true;
		global.has_item = true;
	}		
}
if (pickup > 0) {
	pickup.x = x; //here I refer to the id that's held in pickup
	pickup.y = y - 8;
}
if( keyboard_check(dropKey) && pickup >0 ){
	pickup.y = y + 16;
	pickup = 0;
	global.has_item =false;
}