/// @description Insert description here

// var  = keyword for temporary, only one frame
// might switch to right minus left check so doesn't move when both are pressed

// Horizontal Movement
horizontalSpeed = walkSpeed;
if( keyboard_check(leftKey) ){ // move left
	
	sprite_index = spr_nellyWalk;
	image_xscale = -1;
	if( place_meeting(round(x-horizontalSpeed), round(y), obj_platform) ){ // is there a collision
		// yes: don't move there, move as close as possible
		while( !place_meeting(round(x-1), round(y), obj_platform) ){
			x=x-1;
		}
		horizontalSpeed = 0;
	}
	if( place_meeting(x-horizontalSpeed, y, obj_bailey) ){ 
		horizontalSpeed = 0;
	}
	x = x - horizontalSpeed;
	
	
}else if( keyboard_check(rightKey) ){ // move right
	
	sprite_index = spr_nellyWalk;
	image_xscale = 1;
	if( place_meeting(round(x+horizontalSpeed), round(y), obj_platform) ){ // is there a collision
		// yes, don't move there, move as close as possible
		while( !place_meeting(round(x+1), round(y), obj_platform) ){
			x=x+1;
		}
		horizontalSpeed = 0;
	}
	if( place_meeting(x+horizontalSpeed, y, obj_bailey) ){ 
		horizontalSpeed = 0;
	}
	x = x + horizontalSpeed;
	
}else{ // not walking, stop animation
	sprite_index = spr_nelly;
}

// Jumping
// only jump from ground: place_meeting(x, y+1, obj_platform)
// double jump logic: on the ground? -> set jump count to max
// if jump, jump and jump -= 1
if( place_meeting(x, y+1, obj_platform) || place_meeting(x, y+1, obj_bailey)){ // on floor, reset jumps
	jumps = MAX_JUMPS;
}
if( keyboard_check_pressed(jumpKey) && jumps > 0 ){ // pressed is needed to keep from depleting all
	verticalSpeed = jumpVal;
	jumps -= 1;
}else if( place_meeting(x, y, obj_platform) ){ // on ground not jumping
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
if( place_meeting(x, y+verticalSpeed, obj_bailey) ){ 
	while( !place_meeting(x, y+sign(verticalSpeed), obj_bailey) ){
		y=y+sign(verticalSpeed);
	}
	verticalSpeed = 0;
}
y = y + verticalSpeed;

if(!place_meeting(x, y + 1, obj_platform) && !(place_meeting(x,y+1,obj_bailey))){
	sprite_index = spr_nellyJump;
}

if( keyboard_check(pickUpKey) ){
	
}