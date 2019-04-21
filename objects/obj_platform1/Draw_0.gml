/// @description Insert description here
// You can write your code in this editor
draw_set_font(font_bender_smallText);
draw_set_color(make_color_rgb(0,0,0));
draw_set_valign(fa_top);

draw_set_halign(fa_left);
if(birdCollectNum < 16){
	if(birdCollectNum > 0){
		draw_text(255, 0,"Last Bird: " + string(birdCollectNum-1) + " (" + string(drawNums[birdCollectNum-1]) + ")");
	} else{
		draw_text(255, 0,"Last Bird: ");
	}
	draw_text(495, 0, "Next Bird: " + string(birdCollectNum) + " (" + string(drawNums[birdCollectNum]) + ")");
}