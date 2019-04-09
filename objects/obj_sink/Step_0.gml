/// @description Insert description here
// You can write your code in this editor
if(place_meeting(x, y, obj_toothbrush)){
	toothbrush = true;
	instance_destroy(obj_toothbrush);
	sprite_index = spr_sinktb;
}
if(place_meeting(x, y, obj_toothpaste)){
	toothpaste = true;
	instance_destroy(obj_toothpaste);
	sprite_index = spr_sinktp;
}
if(toothbrush and toothpaste){
	sprite_index = spr_fullsink;
	if(!itemsRecieved){
		itemsRecieved = true;
		script_sfx("catch");
	}
}
else{
	itemsRecieved = false;
}