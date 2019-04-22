/// @description Insert description here
// You can write your code in this editor
draw_set_halign(fa_center); // align to center
draw_set_color(make_color_rgb(0,0,0));
draw_set_font(font_bender_score);
draw_text(250,190,"Current");
draw_text(875,190,"Goal");
for(i = 0; i < 4; i++){
	if (stage < 4){
		binString = string_copy(solutions[stage],4*i+1,4);

		for(j = 0; j < 4; j++){
			if(string_char_at(binString,j+1) == "1"){
				draw_set_color(make_color_rgb(46, 204, 113));
			}
			else{			
				draw_set_color(make_color_rgb(214,37,37));
			}
			draw_text(850+22*j,250+128*i,string_char_at(binString,j+1));
			
			
			if(active[i,j] == 1){
				draw_set_color(make_color_rgb(46, 204, 113));
			}
			else{
				draw_set_color(make_color_rgb(214,37,37));
			}
			draw_text(210+22*j,250+128*i, active[i,j]);
		}
	}
}
