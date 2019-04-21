/// @description Insert description here
// You can write your code in this editor

if (obj_levelUnlockControl.popups == 1){
	obj_levelUnlockControl.popups = 2;
	instance_create_layer(room_height, room_width, "Dialogue", obj_storyPopUp)
	obj_storyPopUp.title = "Level 3: Memory Allocation Cont...";
	obj_storyPopUp.content = "One of the black pipes represents Random Access Memory (RAM) and the other represents Read Only Memory (ROM). RAM and ROM is where the computer looks for the memory needed for a specific process. Can you figure out which one is which?";
	level_start = true;
}



if (level_start == true && obj_levelUnlockControl.popups == 3){
	level_start = false;
	pipe_ram = false;
	
	instance_create_layer(pipe_in, pipe_out,"Instances_birds", obj_binaryBird_l3);
	
	instance_create_layer(100, 740,"Instances_birds", floor_turtle);
	
	instance_create_layer(280, 315,"Instances_birds", top_turtle);

	instance_create_layer(735, 455,"Instances_birds", mid_turtle);

	instance_create_layer(332, 559,"Instances_birds", low_turtle);
}


/*if (obj_levelUnlockControl.popups == 4){
	obj_storyPopUp.title = "Nelly:";
	obj_storyPopUp.content = "Oh, brother!";
	obj_storyPopUp.nellyTalk = true;
	obj_levelUnlockControl.popups = 5;
}*/

if (obj_levelUnlockControl.popups >= 5){
	script_sfx("win");
	script_finishLevelIncr(5);
	room_goto(level_select_screen);
	instance_destroy();
}

if (global.enemiesCompleted >= maxEnemies){
	instance_create_layer(room_height, room_width, "Dialogue", obj_storyPopUp)
	obj_storyPopUp.title = "Nicely done!";
	obj_storyPopUp.content = "Those birds were easy to sort, but next you'll have to help some with memory problems...";
	obj_levelUnlockControl.popups = 4;
}