/// @description Insert description here
// You can write your code in this editor
enemiesSpawned=0
global.enemiesCompleted = 0;
maxEnemies = 20;
alarm[0] = room_speed;
time = 240;
alarm[1] = room_speed;


//need to figure out why they are coming in so high
instance_create_layer(obj_pipe_in.x, obj_pipe_in.y,"Instances_birds", obj_binaryBird);