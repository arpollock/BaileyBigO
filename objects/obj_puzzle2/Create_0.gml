/// @description Insert description here
// You can write your code in this editor
random_set_seed(current_time);
obj_levelUnlockControl.popups = 0;
instance_create_layer(room_height, room_width, "Dialogue", obj_storyPopUp)
obj_storyPopUp.title = "Searching";
obj_storyPopUp.content = "Bailey needs her Hashmap to the Universe to find her way around Bitsburg, but she has lost it, and her stuff is still a little mixed up. Help her sort it out. Nelly can pull the lever to switch the two boxes Bailey is standing on, so that the lower number is on the left.";
obj_levelUnlockControl.popups = 1;

solved = false;
binarySearch = false;
ansPosition = irandom_range(0, 10);
numGuesses = 0;

for(i = 0; i < 11; i++){
	num = irandom_range(0, 9)
	array[i] = string(num);
	unsorted[i] = num;
}
//sort array
for(i = 0; i < 10; i++){
	minimum = unsorted[i];
	for(j = i + 1; j < 11; j++){
		if(unsorted[j] < minimum){
			temp = unsorted[j];
			unsorted[i] = unsorted[j];
			unsorted[j] = minimum;
			minimum = temp;
		}
	}
}
ans_array = unsorted;

position = 0;
instance_create_layer(160 + 64*(ansPosition), 383, "Prize", obj_map);
instance_deactivate_layer("Prize");
