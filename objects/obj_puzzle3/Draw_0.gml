/// @description Insert description here
// You can write your code in this editor
draw_set_font(font_bender_score);
draw_set_halign(fa_left);
draw_text(room_width-room_width/5, room_height- room_height *19 /20,"Time:" + string(time));
draw_text(room_width-room_width/5, room_height - room_height *18 /20,"Birds:" + string(maxEnemies - global.enemiesCompleted));