/// @description Insert description here
// You can write your code in this editor
if (level_start == true){
	level_start = false;
	pipe_ram = false;
	
	instance_create_layer(pipe_in, pipe_out,"Instances_birds", obj_binaryBird_l3);
	
	instance_create_layer(100, 740,"Instances_birds", floor_turtle);
	
	instance_create_layer(280, 315,"Instances_birds", top_turtle);

	instance_create_layer(735, 455,"Instances_birds", mid_turtle);

	instance_create_layer(332, 559,"Instances_birds", low_turtle);
}


if (global.enemiesCompleted >= maxEnemies){
	instance_create_layer(room_height, room_width, "Dialogue", obj_storyPopUp)
	obj_storyPopUp.title = "Nicely done!";
	obj_storyPopUp.content = "Those birds were easy to sort, but next you'll have to help some with memory problems...";
	obj_levelUnlockControl.popups = 3;
}

//check if q is pressed to quit the game
if (keyboard_check(ord("Q"))){
	room_goto(level_select_screen);
}

if (obj_levelUnlockControl.popups == 4){
	obj_storyPopUp.title = "Nelly:";
	obj_storyPopUp.content = "Oh, brother!";
	obj_storyPopUp.nellyTalk = true;
	obj_levelUnlockControl.popups = 5;
}

if (obj_levelUnlockControl.popups >= 6){
	script_sfx("win");
	script_finishLevelIncr(5);
	room_goto(level_select_screen);
}