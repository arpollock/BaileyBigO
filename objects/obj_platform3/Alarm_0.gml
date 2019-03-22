/// @description Insert description here
// You can write your code in this editor
pipe_in = obj_pipe_in.x-100;
pipe_out = obj_pipe_in.y+100;
if (enemiesSpawned < maxEnemies){
	instance_create_layer(pipe_in, pipe_out,"Instances_birds", obj_binaryBird_l3);
	enemiesSpawned++;
}
y_out = obj_yPipe_out.x-10;

instance_create_layer(y_out, obj_yPipe_out.y,"Instances_birds", obj_turtle_l3);

alarm[0] = room_speed *20;