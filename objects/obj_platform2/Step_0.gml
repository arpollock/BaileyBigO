/// @description Insert description here
// You can write your code in this editor

//Story Line Display for Level 2!
if( keyboard_check_pressed( vk_rshift ) ){
	instance_create_layer(room_height, room_width, "Dialogue", obj_storyPopUp)
	obj_storyPopUp.title = "Hello I am the title"
	obj_storyPopUp.content = "Hello I am the body... ;)"
}


if(obj_sink.itemsRecieved and obj_tv.itemsRecieved and obj_basket.itemsRecieved){
	//Level Completed!
	//Display message and activate the door
	
	//When player opens the door, go to room_2_puzzle
	obj_levelUnlockControl.currentLevel++;
	room_goto(level_select_screen);
}
