/// @description Insert description here
// You can write your code in this editor

if (fly){
	if (place_meeting(x,y,obj_platform) && x<=room_width-64){
		x = x+x_speed;
	}
	else {
		x = x-x_speed;
		fly = 0;
		p_side = -1;
	}
}
else {
	if (place_meeting(x,y,obj_platform) && x>=64){
		x = x-x_speed;
	}
	else {
		x = x+x_speed;
		fly = 1;
		p_side = 1;
	}
}


	
p_ind += 0.25;
if (p_ind > sprite_get_number(sprite_index)-1){
	p_ind = 0;
}	

collectNum = obj_platform1.birdCollectNum;
if(place_meeting(x,y,obj_bailey)){
	if(sprite_index != spr_binaryBird2){
		if (num == obj_platform1.birdCollectNum){
			script_sfx("catch");
			obj_platform1.birdCollectNum++;
			instance_destroy();
		}
	}
}
else if(place_meeting(x,y,obj_nelly)){
	if(sprite_index != spr_binaryBird1){
		if (num == obj_platform1.birdCollectNum){
			script_sfx("catch");
			obj_platform1.birdCollectNum++;
			instance_destroy();
		}
	}
}