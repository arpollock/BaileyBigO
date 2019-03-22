/// @description Insert description here
// You can write your code in this editor
enemiesSpawned=1;
global.enemiesCompleted = 0;
maxEnemies = 10;
alarm[0] = room_speed *10;
time = 90;
alarm[1] = room_speed *2;
x_pipe = obj_pipe_in.x+20;

//need to figure out why they are coming in so high
instance_create_layer(x_pipe, obj_pipe_in.y,"Instances_birds", obj_binaryBird_l3);
obj_binaryBird_l3.sprite_index = spr_binaryBird3;
