/// @description Insert description here
// You can write your code in this editor
if (global.enemiesCompleted-1 >= maxEnemies){
	script_finishLevelIncr(6);
	script_sfx("win");
	room_goto(level_select_screen);
	instance_destroy();
}

if (time == 0){
	room_restart();
}
	
//updates pipe numbers
pipe[1] = 0;
pipe[2] = 0;
for(i = global.enemiesCompleted ; i < enemiesSpawned; i++){ //for each bird
	if(enemies[i].inside != 0){ //if bird still exists
		pipe[enemies[i].inside]++;//increment bird's pipe location
	}
}
