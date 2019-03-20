/// @description Insert description here
// You can write your code in this editor

draw_sprite_ext(sprite_index, p_ind, x, y, p_side, 1, 0, c_white, 1);
draw_set_font(font_bender_subtitle);
	switch(sprite_index){
		case spr_binaryBird1:
		draw_set_color(make_color_rgb(214,37,37));
		break;
		case spr_binaryBird2:
		draw_set_color(make_color_rgb(251,226,0));
		break;
		case spr_binaryBird3:
		draw_set_color(make_color_rgb(248, 153, 29));
		break;
	}

draw_set_halign(fa_center);
draw_text(x,y,drawNum);