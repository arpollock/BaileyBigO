/// @description Insert description here
// You can write your code in this editor
draw_self();
if (room != room_1_platform){
	for(i = 0; i < hp; i++){
		draw_sprite(spr_baileyLife, 0, 80 + i*32, 25);
	}
}