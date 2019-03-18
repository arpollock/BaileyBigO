/// @description Insert description here
// You can write your code in this editor
//if (!carried){
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
	
	//only nelly can put in the yellow pipe
	if( place_meeting(x, y, obj_yPipe_in) && global.nelly_pickup = id){ // is there a collision
		visible = false;
		x = obj_yPipe_out.x;
		y = obj_yPipe_out.y;
		global.nelly_has_item = false;
		global.nelly_pickup = 0;
		//instance_destroy();		
		start_timer = true;
	}
	//only bailey can put in the red pipes
	if( place_meeting(x, y, obj_rPipe_in) && global.bailey_pickup = id ){ // is there a collision
		visible = false;
		x = obj_rPipe_out.x;
		y = obj_rPipe_out.y+sprite_height;
		global.bailey_has_item = false;
		global.bailey_pickup = 0;
		//instance_destroy();		
		start_timer = true;
	}
	//only bailey can put them through the exit pipe
	if( place_meeting(x, y, obj_pipe_exit) && global.bailey_pickup = id ){ // is there a collision
		//visible = false;
		instance_destroy();
		global.bailey_pickup = 0;
		global.bailey_has_item = false;
		//start_timer = true;
	}
	
	if (start_timer){
		timer++;
	}
	
	if (timer == 200){
		visible = true;
		timer = 0;
		start_timer = false;
	}