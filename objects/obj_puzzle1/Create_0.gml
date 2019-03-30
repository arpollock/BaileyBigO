/// @description Insert description here
// You can write your code in this editor
stage = 0;
for(i = 0; i < 2; i++){
	for(j = 0; j < 2; j++){
		inst = instance_create_layer(32+64*j,32+64*i,"Instances", obj_puzzlePiece);
		inst.section = i +  2*j;
		inst.visible = false;
		pieces[i+2*j] = inst;
	}
}

for(i = 0; i <4; i++){
	for(j = 0; j < 4; j++){
		inst = instance_create_layer(256+128*i,256+128*j,"Instances", obj_crate);
		crates[j,i] = inst;
		vari = irandom(1);
		inst.active = vari;
		state[i,j] = vari;
	}
}

solutions[0] = "0110111111111111";
solutions[1] = "1111011100110001";
solutions[2] = "0110111111111111";
solutions[3] = "1111111011001000";

for(k = 0; k < 4; k++){
	for(i = 0;i<4; i++){
		for(j = 0;j<4;j++){
			stageSolutions[(4*k+i),j] = string_char_at(solutions[k],4*i+j+1);
		}
	}
}

draw_set_halign(fa_center); // align to center
draw_set_color(make_color_rgb(214,37,37));
draw_set_font(font_bender_subtitle);
for(i = 0; i <4; i++){
	binString = string_copy(solutions[stage],4*i+1,4);
	draw_text(864,168+260*i,binString);	
}
	
random_set_seed(current_time);
