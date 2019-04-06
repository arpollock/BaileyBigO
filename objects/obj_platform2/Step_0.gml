/// @description Insert description here
// You can write your code in this editor

//Story Line Display for Level 2!



if(obj_sink.itemsRecieved and obj_tv.itemsRecieved and obj_basket.itemsRecieved){
	//Level Completed!
	//Display message and activate the door
	instance_create_layer(room_height, room_width, "Dialogue", obj_storyPopUp)
	obj_storyPopUp.title = "Bailey: ";
	obj_storyPopUp.content = "Clean as a whistle! With the mess gone, we can move on to saving the rest of bitsburg. I just need one thing first...";
	obj_storyPopUp.baileyTalk = true;
	obj_levelUnlockControl.popups = 3;
	
	//When player opens the door, go to room_2_puzzle
	if (obj_levelUnlockControl.popups >= 4){
		script_sfx("win");
		script_finishLevelIncr(3);
		room_goto(level_select_screen);
	}
}

//check if q is pressed to quit the game
if (keyboard_check(ord("Q"))){
	room_goto(level_select_screen);
}