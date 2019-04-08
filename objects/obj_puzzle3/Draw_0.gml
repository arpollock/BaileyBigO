/// @description Insert description here
// You can write your code in this editor
draw_set_font(font_bender_score);
draw_set_halign(fa_left);
draw_text(room_width-160, 50,"Time:" + string(time));
draw_text(room_width-160, 90,"Birds:" + string(maxEnemies - global.enemiesCompleted));