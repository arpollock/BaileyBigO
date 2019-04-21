/// @description Insert description here
// You can write your code in this editor

if(!binarySearch and keyboard_check_pressed(obj_nellyPuzzle2.pickUpKey)){
	obj_lever.switchLever = true;
	temp = array[position+1];
	array[position+1] = array[position];
	array[position] = temp;
}

if(binarySearch and keyboard_check_pressed(obj_baileyPuzzle2.pickUpKey)){
	obj_lever.switchLever = true;
	numGuesses++;
	//instance_destroy(obj_redbox);
	//open crate or whatever 
	if(position < ansPosition){ //display greater than
		instance_create_layer(480, 540, "Instances", obj_symbol);
		obj_symbol.greater = true;
		
		for(i = 0; i <= position; i++){
			instance_create_layer(160 + i*64, 384, "Boxes", obj_redbox);
		}

	} 
	else if(position == ansPosition){
		//Level complete! they found the hash map!!
		
		instance_create_layer(room_height, room_width, "Dialogue", obj_storyPopUp)
		obj_storyPopUp.title = "You found that Hashmap";
		obj_storyPopUp.content = "Now Bailey and Nelly have all the tools they need to take on the rest of the turtles!";
		obj_levelUnlockControl.popups = 3;
		
		instance_activate_layer("Prize");
		
	}
	else { //display less than
		instance_create_layer(480, 540, "Instances", obj_symbol);
		obj_symbol.less = true;

		for(i = position; i <= 10; i++){
			instance_create_layer(160 + i*64, 384, "Boxes", obj_redbox);
		}
	}
	
}

if(!binarySearch){
	solved = true;
	for(i = 0; i < 11; i++){
		if(array[i] != ans_array[i]){
			solved = false;
		}
	}
}


if(solved){
	instance_create_layer(room_height, room_width, "Dialogue", obj_storyPopUp)
	obj_storyPopUp.title = "Great Job! You bubble sorted the list!"
	obj_storyPopUp.content = "Now the location of the Hash Map is revealed. Now we can perform a Binary Search to find it!"
	//Done with Bubble Sort, time to do Binary Search 
	obj_nellyPuzzle2.x = (room_width/2 - 30) - room_width/3 + 15;
	obj_nellyPuzzle2.y = room_height/2 - 35;
	obj_nellyPuzzle2.image_xscale = 1;
	
	obj_baileyPuzzle2.x = 100; //(room_width/2 - 30) + room_width/5;
	obj_baileyPuzzle2.y = 750; //room_height/2 - 32;
	obj_baileyPuzzle2.image_xscale = -1;
	
	
	solved = false;
	binarySearch = true;
	position = 0;
	
	for(i = 0; i < 11; i++){
		instance_create_layer(160 + i*64, 384, "Assets_2", obj_greenbox);
	}
}

if (obj_levelUnlockControl.popups >= 4){
	script_sfx("win");
	script_finishLevelIncr(4);
	room_goto(level_select_screen);
	instance_destroy();
}