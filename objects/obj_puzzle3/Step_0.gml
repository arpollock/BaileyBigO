/// @description Insert description here
// You can write your code in this editor
if (global.enemiesCompleted == maxEnemies){
	script_finishLevelIncr(6);
	script_sfx("win");
	room_goto(level_select_screen);
	instance_destroy();
}
pipe[1] = 0;
pipe[2] = 0;
for(i = global.enemiesCompleted ; i < enemiesSpawned; i++){
	if(enemies[i].inside != 0){
		pipe[enemies[i].inside]++;
	}
}
