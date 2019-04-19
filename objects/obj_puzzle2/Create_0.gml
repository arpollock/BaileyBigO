/// @description Insert description here
// You can write your code in this editor

obj_levelUnlockControl.popups = 0;
instance_create_layer(room_height, room_width, "Dialogue", obj_storyPopUp)
obj_storyPopUp.title = "Searching";
obj_storyPopUp.content = "Bailey needs her Hashmap to the Universe to find her way around Bitsburg, but she has lost it, and her stuff is still a little mixed up. Help her sort it out. Nelly can pull the lever to switch the two boxes Bailey is standing on, so that the lower number is on the left.";
obj_levelUnlockControl.popups = 1;

solved = false;
binarySearch = false;
ansPosition = 7;
numGuesses = 0;
str = "10273249758";
//str = "01223457789";
ans = "01223457789";
for(i = 0; i < 11; i++){
	array[i] = string_char_at(str, i+1);
	ans_array[i] = string_char_at(ans, i+1);
}
position = 0;

instance_deactivate_layer("Prize");
