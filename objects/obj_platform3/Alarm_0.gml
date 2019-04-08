/// @description Insert description here
// You can write your code in this editor


if (enemiesSpawned < maxEnemies && pipe_ram){
	instance_create_layer(pipe_in, pipe_out,"Instances_birds", obj_binaryBird_l3);
	enemiesSpawned++;
	pipe_ram = !pipe_ram;
}
else if (enemiesSpawned < maxEnemies && !pipe_ram){
	temp = instance_create_layer(rom_in, rom_out,"Instances_birds", obj_binaryBird_l3);
	temp.sprite_index = spr_binaryBird3;
	enemiesSpawned++;
	pipe_ram = !pipe_ram;
}
else{
}


instance_create_layer (irandom_range (0, 770), irandom_range (0, 450), "Instances_birds", obj_turtle_l3);

alarm[0] = room_speed *20;