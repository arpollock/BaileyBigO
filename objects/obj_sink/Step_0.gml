/// @description Insert description here
// You can write your code in this editor
if(place_meeting(x, y, obj_toothbrush)){
	toothbrush = true;
	if(obj_toothbrush.holder == obj_bailey){
		obj_bailey.holding = false;
	} else {
		obj_nelly.holding = false;
	}
	instance_destroy(obj_toothbrush);
	sprite_index = spr_sinktb;
}
if(place_meeting(x, y, obj_toothpaste)){
	toothpaste = true;
	if(obj_toothpaste.holder == obj_bailey){
		obj_bailey.holding = false;
	} else {
		obj_nelly.holding = false;
	}
	instance_destroy(obj_toothpaste);
	sprite_index = spr_sinktp;
}
if(toothbrush and toothpaste){
	sprite_index = spr_fullsink;
	//if(!itemsRecieved){
		itemsRecieved = true;
	//	script_sfx("catch");
	//}
}