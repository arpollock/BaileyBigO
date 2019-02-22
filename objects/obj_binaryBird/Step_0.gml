/// @description Insert description here
// You can write your code in this editor



if (fly){
	if (x<x_start+400){
		x = x+x_speed;
	}
	else {
		fly = 0;
		p_side = -1;
	}
}
else {
	if (x>x_start){
		x = x-x_speed;
	}
	else {
		fly = 1;
		p_side = 1;
	}
}
	
p_ind += 0.25;
if (p_ind > sprite_get_number(p_spr)-1){
	p_ind = 0;
}	