/// @description Insert description here
// You can write your code in this editor
p_ind = 0;
x_speed = 1;
num = 0;
drawNum = "";
sprite_index = choose(spr_binaryBird1,spr_binaryBird2,spr_binaryBird3);
if (irandom(1)){
	fly = 1;
	p_side = 1;
}
else {
	fly = 0;
	p_side = -1;
}
/*while(!(place_meeting(x,y,obj_platform))) {
	y+=16;
}*/