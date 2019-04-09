/// @description Insert description here
// You can write your code in this editor
if(place_meeting(x, y, obj_remote)){
	instance_destroy(obj_remote);
	sprite_index = spr_fulltv;
	if(!itemsRecieved){
		itemsRecieved = true;
		script_sfx("catch");
	}
}
else{
	itemsRecieved = false;
}