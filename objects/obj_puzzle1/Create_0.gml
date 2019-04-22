	/// @description Insert description here
// You can write your code in this editor
stage = 0;
random_set_seed(current_time);
obj_levelUnlockControl.popups = 0;

instance_create_layer(room_height, room_width, "Dialogue", obj_storyPopUp)
obj_storyPopUp.title = "Puzzle 1: Binary:";
obj_storyPopUp.content = "Before Bailey and Nelly can move on they have to organize the birds the way they should be. Use [space] for Bailey and [enter] for Nelly to change the crates to match the corresponding binary numbers. Green = 1, Red = 0. Bailey can turn crates on and Nelly can turn them off.";
obj_levelUnlockControl.popups = 1;


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
		inst = instance_create_layer(375+128*i,256+128*j,"Instances", obj_crate);
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

for(i = 0; i < 4; i++){
	for(j = 0; j < 4; j++){	
		active[i,j] = real(crates[i,j].active);
	}
}
drawing = 0;