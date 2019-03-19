/// @description Insert description here
// You can write your code in this editor
//if (!carried){
if(pos <= stride){
//Horizontal Collision
	if (place_meeting(x+spd,y,obj_platform)){
		 x -= spd;	
		image_xscale = -1;
		pos = stride + 1;
	}
	else{
		x += spd;
		image_xscale = 1;
	}
}
else if(pos > stride and pos <= stride*2){
	//Horizontal Collision
	if (place_meeting(x-spd,y,obj_platform)){
		 x += spd;	
		image_xscale = 1;
		pos = 0;
	}
	else{
		x -= spd;
		image_xscale = -1;
	}
}
else{
	pos = 0;
}

	//only nelly can put in the yellow pipe
	if( place_meeting(x, y, obj_yPipe_in) && global.nelly_pickup == id){ // is there a collision
		visible = false;
		x = obj_yPipe_out.x+10;
		y = obj_yPipe_out.y;
		pos = 0;
		spd = 0;
		global.nelly_has_item = false;
		global.nelly_pickup = 0;
		//instance_destroy();		
		alarm[1] = room_speed * 10;
	}
	//only bailey can put in the red pipes
	if( place_meeting(x, y, obj_rPipe_in) && global.bailey_pickup == id ){ // is there a collision
		visible = false;
		x = obj_rPipe_out.x;
		y = obj_rPipe_out.y+sprite_height;
		pos = 0;
		spd = 0;
		global.bailey_has_item = false;
		global.bailey_pickup = 0;
		//instance_destroy();		
		alarm[0] = room_speed * 20;
	}
	//only bailey can put them through the exit pipe
	if( place_meeting(x, y, obj_pipe_exit) && global.bailey_pickup == id ){ // is there a collision
		//visible = false;
		instance_destroy();
		global.bailey_pickup = 0;
		global.bailey_has_item = false;
		global.enemiesCompleted++;
		//start_timer = true;
	}
	
	
	//only bailey can put them through the exit pipe
	if( place_meeting(x, y, obj_rpipe_exit) && global.bailey_pickup == id && sprite_index == spr_binaryBird1){ // is there a collision
		//visible = false;
		instance_destroy();
		global.bailey_pickup = 0;
		global.bailey_has_item = false;
		//global.enemiesCompleted++;
		//start_timer = true;
	}
	//only bailey can put them through the exit pipe
	if( place_meeting(x, y, obj_opipe_exit) && global.bailey_pickup == id && sprite_index == spr_binaryBird3){ // is there a collision
		//visible = false;
		instance_destroy();
		global.bailey_pickup = 0;
		global.bailey_has_item = false;
		//global.enemiesCompleted++;
		//start_timer = true;
	}
	
	//only bailey can put them through the exit pipe
	if( place_meeting(x, y, obj_ypipe_exit) && global.nelly_pickup == id && sprite_index == spr_binaryBird2){ // is there a collision
		//visible = false;
		instance_destroy();
		global.nelly_pickup = 0;
		global.nelly_has_item = false;
		//global.enemiesCompleted++;
		//start_timer = true;
	}
	if( place_meeting(x, y, obj_opipe_exit) && global.nelly_pickup == id && sprite_index == spr_binaryBird2 ){ // is there a collision
		//visible = false;
		instance_destroy();
		global.nelly_pickup = 0;
		global.nelly_has_item = false;
		//global.enemiesCompleted++;
		//start_timer = true;
	}
