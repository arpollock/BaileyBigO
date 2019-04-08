/// @description Insert description here
// You can write your code in this editor
if(place_meeting(x, y, obj_remote)){
	if(!itemsRecieved){
		itemsRecieved = true;
		script_sfx("catch");
	}
}
else{
	itemsRecieved = false;
}