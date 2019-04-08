/// @description Insert description here
// You can write your code in this editor
enemiesSpawned=1;
global.enemiesCompleted = 0;
maxEnemies = 2;
alarm[0] = room_speed *10;
time = 90;
alarm[1] = room_speed *2;
x_pipe = obj_pipe_in.x+20;

obj_levelUnlockControl.popups = 0;
instance_create_layer(room_height, room_width, "Dialogue", obj_storyPopUp)
obj_storyPopUp.title = "Puzzle 3: Memory";
obj_storyPopUp.content = "These binary birds can't quite remember what color they're supposed to be. Help Bailey and Nelly put them into the pipes that match their colors, so they can remember.";
obj_levelUnlockControl.popups = 1;

//need to figure out why they are coming in so high
instance_create_layer(x_pipe, obj_pipe_in.y,"Instances_birds", obj_binaryBird_l3);
obj_binaryBird_l3.sprite_index = spr_binaryBird3;
