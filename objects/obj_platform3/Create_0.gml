/// @description Insert description here
// You can write your code in this editor
enemiesSpawned=1;
global.enemiesCompleted = 0;
maxEnemies = 9;
alarm[0] = room_speed *8;
time = 90;
alarm[1] = room_speed *2;

obj_levelUnlockControl.popups = 0;
instance_create_layer(room_height, room_width, "Dialogue", obj_storyPopUp)
obj_storyPopUp.title = "Level 3: Memory Allocation";
obj_storyPopUp.content = "In this level, you will have to act like the Central Processing Unit (CPU) of the computer to make sure all the Binary Birds get to their correct locations.";
//obj_levelUnlockControl.popups = 1;

level_start = false;
pipe_ram = true; 

pipe_in = obj_pipe_in.x-100;
pipe_out = obj_pipe_in.y+100;

rom_in = obj_rom_in.x-100;
rom_out = obj_rom_in.y+100;

floor_turtle = obj_turtle_l3;
top_turtle = obj_turtle_l3;
mid_turtle = obj_turtle_l3;
low_turtle = obj_turtle_l3;
	
