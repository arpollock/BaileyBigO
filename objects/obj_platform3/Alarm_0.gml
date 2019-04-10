/// @description Insert description here
// You can write your code in this editor


if (enemiesSpawned < maxEnemies && pipe_ram){
	instance_create_layer(pipe_in, pipe_out,"Instances_birds", obj_binaryBird_l3);
	enemiesSpawned++;
	pipe_ram = !pipe_ram;
}
else if (enemiesSpawned < maxEnemies && !pipe_ram){
	instance_create_layer(rom_in, rom_out,"Instances_birds", obj_binaryBird_l3);
	enemiesSpawned++;
	pipe_ram = !pipe_ram;
}
else{
}


with (instance_create_layer (irandom_range (64, room_width), irandom_range (64, room_height), "Instances_birds", obj_turtle_l3)){
	while(!place_empty(x,y)){
		x = irandom_range (64, room_width);
	}
}

alarm[0] = room_speed *20;