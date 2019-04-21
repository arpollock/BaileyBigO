/// @description Insert description here
// You can write your code in this editor
draw_set_font(font_bender_smallText);
draw_set_halign(fa_left);
draw_text(room_width-160, 50,"Time:" + string(time));
draw_text(room_width-160, 90,"Birds:" + string(maxEnemies - global.enemiesCompleted));

draw_set_halign(fa_center); // align to center
draw_set_font(font_bender_subtitle);
draw_text(350,230,pipe[1]);
draw_text(160,700,pipe[2]);