/// @description Insert description here
// You can write your code in this editor
if( isPressed ){
	global.currentLevel = 1;
	script_save();
	instance_activate_all();
	room_goto(room_1_platform);
}