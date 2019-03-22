/// @description Insert description here
// You can write your code in this editor
if(keyboard_check_pressed(obj_nellyPuzzle2.pickUpKey)){
	if(index == 0){
		sprite_index = spr_levelDown;
		index++;
	} else {
		sprite_index = spr_levelUp;
		index = 0;
	}
}