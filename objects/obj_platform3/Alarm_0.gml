/// @description Insert description here
// You can write your code in this editor
pipe_in = obj_pipe_in.x-100;
pipe_out = obj_pipe_in.y+100;
if (enemiesSpawned < maxEnemies){
	instance_create_layer(pipe_in, pipe_out,"Instances_birds", obj_binaryBird_l3);
	enemiesSpawned++;
}


instance_create_layer (irandom_range (0, 770), irandom_range (0, 450), "Instances_birds", obj_turtle_l3);

alarm[0] = room_speed *20;