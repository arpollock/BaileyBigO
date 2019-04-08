/// @description Insert description here
// You can write your code in this editor
if(place_meeting(x, y, obj_clothes)){
	if(!itemsRecieved){
		itemsRecieved = true;
		script_sfx("catch");
	}
}
else{
	itemsRecieved = false;
}