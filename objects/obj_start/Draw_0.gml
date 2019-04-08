/// @description Insert description here
// You can write your code in this editor
draw_self();
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(make_color_rgb(214,37,37));
draw_set_alpha(1);
draw_set_font(font_bender_subtitle);
draw_text(x, y, "Start New Game");
if( isPressed && global.currentLevel != 1 ){
	
	draw_set_color(c_black);
	draw_set_alpha(0.60);
	draw_rectangle(0,0,room_width,room_height, 0);

	draw_set_color(make_color_rgb(255,255,255));
	draw_set_alpha(1);
	draw_set_font(font_bender_subtitle);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	
	draw_text(room_width/2, room_height/2,"Are you sure?\nThis will erase any previous progress. Y/N");
	instance_deactivate_all(true);

	
	if( keyboard_check_pressed( ord("N") ) ){
		isPressed = false;
		instance_activate_all();
	}
}