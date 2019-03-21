/// @description Insert description here
// You can write your code in this editor
if( paused ){
	draw_set_color(c_black);
	draw_set_alpha(0.60);
	draw_rectangle(0,0,room_width,room_height, 0);

	draw_set_color(make_color_rgb(255,255,255));
	draw_set_alpha(1);
	draw_set_font(font_bender_title);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text(room_width/2, room_height/2-room_height/8, "Paused");

	draw_set_font(font_bender_subtitle);
	draw_text(room_width/2, room_height/2+room_height/8, "Press ESC to Resume");
}