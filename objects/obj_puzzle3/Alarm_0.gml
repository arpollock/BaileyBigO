/// @description Insert description here
// You can write your code in this editor
x_pipe = obj_pipe_in.x+20;
if (enemiesSpawned < maxEnemies){
	instance_create_layer(x_pipe, obj_pipe_in.y,"Instances_birds", obj_binaryBird_l3);
	obj_binaryBird_l3.sprite_index = spr_binaryBird3;
	enemiesSpawned++;
}
alarm[0] = room_speed *10;