/// @description Insert description here
// You can write your code in this editor
time -=1;
if (time <= 0){
	script_sfx("game");
	room_restart();
}
alarm[1] = room_speed *2;