/// @description Insert description here
// You can write your code in this editor
if (enemiesSpawned < maxEnemies){
	instance_create_layer(obj_pipe_in.x-100, obj_pipe_in.y+100,"Instances_birds", obj_binaryBird);
	enemiesSpawned++;
}
instance_create_layer(obj_yPipe_out.x-10, obj_yPipe_out.y,"Instances_birds", obj_turtle);

alarm[0] = room_speed *10;