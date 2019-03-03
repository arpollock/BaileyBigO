/// @description Insert description here
// You can write your code in this editor
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


