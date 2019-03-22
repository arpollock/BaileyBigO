/// @description Insert description here
// You can write your code in this editor

if(keyboard_check_pressed(obj_nellyPuzzle2.pickUpKey)){
	temp = array[position+1];
	array[position+1] = array[position];
	array[position] = temp;
}


if(solved){
	instance_create_layer(room_height, room_width, "Dialogue", obj_storyPopUp)
	obj_storyPopUp.title = "Great Job! You bubble sorted the list!"
	obj_storyPopUp.content = "Now the location of the Hash Map is revealed. Now let perform a Binary Search to find it!"
	//Done with Bubble Sort, time to do Binary Search 
	obj_nellyPuzzle2.x = (room_width/2 - 30) - room_width/5;
	obj_nellyPuzzle2.y = room_height/2 - 32;
	
	obj_baileyPuzzle2.x = (room_width/2 - 30) + room_width/5;
	obj_baileyPuzzle2.y = room_height/2 - 32;
	
	instance_activate_layer("Prize");
	
	solved = false;
}