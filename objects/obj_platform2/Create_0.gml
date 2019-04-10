random_set_seed(current_time);
goals[0] = obj_sink;
goals[1] = obj_tv;
goals[2] = obj_basket;
goalLoc[0, 0] = 361;
goalLoc[0, 1] = 160;
goalLoc[1, 0] = 894; 
goalLoc[1, 1] = 221;
goalLoc[2, 0] = 94;
goalLoc[2, 1] = 731;
goalTaken[0] = 0;
goalTaken[1] = 0;
goalTaken[2] = 0;

objects[0] = obj_toothbrush;
objects[1] = obj_toothpaste;
objects[2] = obj_remote;
objects[3] = obj_clothes;

objLoc[0, 0] = 64; 
objLoc[0, 1] = 224;
objLoc[1, 0] = 694; 
objLoc[1, 1] = 386;
objLoc[2, 0] = 290; 
objLoc[2, 1] = 475;
objLoc[3, 0] = 799; 
objLoc[3, 1] = 477;
objTaken[0] = 0;
objTaken[1] = 0;
objTaken[2] = 0;
objTaken[3] = 0;

for(i = 0; i < 3; i++) {
	j = irandom(2);
	while(goalTaken[j]){
		j = irandom(2);
	}
	instance_create_layer(goalLoc[j,0],goalLoc[j,1],"Instances",goals[i]);
	goalTaken[j] = 1;
}

for(i = 0; i < 4; i++) {
	j = irandom(3);
	while(objTaken[j]){
		j = irandom(3);
	}
	instance_create_layer(objLoc[j,0],objLoc[j,1],"Instances",objects[i]);
	objTaken[j] = 1;
}
