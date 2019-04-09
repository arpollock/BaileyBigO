/// @description Insert description here
// You can write your code in this editor
if(place_meeting(x, y, obj_clothes)){
	instance_destroy(obj_clothes);
	sprite_index = spr_fullbasket;
	if(!itemsRecieved){
		itemsRecieved = true;
		script_sfx("catch");
	}
}
else{
	itemsRecieved = false;
}