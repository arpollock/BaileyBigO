/// @description Insert description here
// You can write your code in this editor
enemiesSpawned=0;
pipe[1] = 0;
pipe[2] = 0;
global.enemiesCompleted = 0;
maxEnemies = 10;
alarm[0] = room_speed *10;
time = 75;
alarm[1] = room_speed *2;
x_pipe = obj_pipe_in.x+20;

obj_levelUnlockControl.popups = 0;
instance_create_layer(room_height, room_width, "Dialogue", obj_storyPopUp)
obj_storyPopUp.title = "Puzzle 3: Pipelining";
obj_storyPopUp.content = "Pipelining is allows computers to multitask. It adds efficiency by always keeping the computer busy. Throughput is how we measure pipelining and it represents the amount of time it takes to complete a task. For this puzzle, Bailey and Nelly have to make sure all the birds get through the pipes before the time runs out!";
obj_levelUnlockControl.popups = 1;

//need to figure out why they are coming in so high
var inst = instance_create_layer(x_pipe, obj_pipe_in.y,"Instances_birds", obj_binaryBird_l3);
enemies[enemiesSpawned] = inst;
enemiesSpawned++;
