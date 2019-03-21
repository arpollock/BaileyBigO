/// @description Insert description here
// You can write your code in this editor
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
if( keyboard_check( ord("W") ) ){
	draw_set_color(make_color_rgb(214,37,37));
}else{
	draw_set_color(make_color_rgb(71,73,73));
}

draw_set_alpha(1);

draw_set_font(font_bender_smallText);
draw_text(x, y, "jump/walk up");