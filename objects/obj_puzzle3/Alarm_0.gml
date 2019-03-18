/// @description Insert description here
// You can write your code in this editor
if (enemiesSpawned < maxEnemies){
	instance_create_layer(obj_pipe_in.x, obj_pipe_in.y,"Instances_birds", obj_binaryBird);
	enemiesSpawned++;
}
alarm[0] = room_speed * 5;