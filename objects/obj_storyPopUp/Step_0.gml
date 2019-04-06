/// @description Insert description here
// You can write your code in this editor
instance_deactivate_layer("Instances")

if( keyboard_check_pressed( vk_space) ){
	obj_levelUnlockControl.popups += 1;
	instance_activate_layer("Instances")
	instance_destroy();
}



