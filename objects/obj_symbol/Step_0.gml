/// @description Insert description here
// You can write your code in this editor
if(timer == 0){
	instance_destroy();
}
if(less){
	greater = false;
	less = false;
	image_angle -= 90;
}
if(greater){
	less = false;
	greater = false;
	image_angle += 90;
}

timer--;