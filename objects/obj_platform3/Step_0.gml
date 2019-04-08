/// @description Insert description here
// You can write your code in this editor
if (global.enemiesCompleted >= maxEnemies){
	instance_create_layer(room_height, room_width, "Dialogue", obj_storyPopUp)
	obj_storyPopUp.title = "Nicely done!";
	obj_storyPopUp.content = "Those birds were easy to sort, but next you'll have to help some with memory problems...";
	obj_levelUnlockControl.popups = 3;
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