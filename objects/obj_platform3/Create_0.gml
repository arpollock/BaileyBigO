/// @description Insert description here
// You can write your code in this editor
enemiesSpawned=1;
global.enemiesCompleted = 0;
maxEnemies = 6;
alarm[0] = room_speed *10;
time = 90;
alarm[1] = room_speed *2;

pipe_in = obj_pipe_in.x-100;
pipe_out = obj_pipe_in.y+100;
//need to figure out why they are coming in so high
instance_create_layer(pipe_in, pipe_out,"Instances_birds", obj_binaryBird_l3);
//instance_create_layer(obj_yPipe_out.x-100, obj_yPipe_out.y,"Instances_birds", obj_turtle);