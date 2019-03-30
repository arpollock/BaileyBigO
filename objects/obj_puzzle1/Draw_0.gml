/// @description Insert description here
// You can write your code in this editor
draw_set_halign(fa_center); // align to center
draw_set_color(make_color_rgb(214,37,37));
draw_set_font(font_bender_subtitle);
for(i = 0; i < 4; i++){
	binString = string_copy(solutions[stage],4*i+1,4);
	draw_text(832,240+128*i,binString);	
}
