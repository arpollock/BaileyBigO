/// @description Insert description here
// You can write your code in this editor
if( keyboard_check_pressed( vk_escape ) ){
	if( !paused ){
		paused = true;
		instance_deactivate_all(true);
	}else{
		paused = false;
		instance_activate_all();
	}
}

if( paused ){ //check if q is pressed to quit the game ONLY QUIT IF PAUSED
	if (keyboard_check_pressed(ord("Q"))){
		instance_activate_all();
		room_goto(main_menu_screen);
	}
}