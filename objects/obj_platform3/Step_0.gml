/// @description Insert description here
// You can write your code in this editor
if (global.enemiesCompleted == maxEnemies){
	script_sfx("win");
	script_finishLevelIncr(5);
	room_goto(level_select_screen);
}

//check if q is pressed to quit the game
if (keyboard_check(ord("Q"))){
	room_goto(level_select_screen);
}