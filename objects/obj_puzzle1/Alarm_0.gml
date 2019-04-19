/// @description Insert description here
// You can write your code in this editor
	stage++;
	show.x = X;
	show.y = Y;
	show.image_xscale = 1;
	show.image_yscale = 1;
	if (stage >= 4) {
		obj_levelUnlockControl.popups += 1;
		stage--;
	} else {
		//redraw = true;
		for(i = 0; i < 4; i++){
			for(j = 0; j < 4; j++){
				crates[i,j].active = irandom(1);
			}
		}
	}