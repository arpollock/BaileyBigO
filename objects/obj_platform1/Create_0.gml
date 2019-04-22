/// @description Insert description here
// You can write your code in this editor
maxBits = 4;
maxi = power(maxBits,2);
birdGenNum = 0;
birdCollectNum = 0;
drawNum = "";
maxBirds = 3;
played = 0;
obj_levelUnlockControl.popups=0;
instance_create_layer(room_height, room_width, "Dialogue", obj_storyPopUp)
obj_storyPopUp.title = "Hello, World!";
obj_storyPopUp.content = "Welcome to Bitsburg, a digital utopia! At least usually, but Bitsburg has been overrun by Time Complexity Turtles. You have to do something to help!";
//obj_levelUnlockControl.popups=1;

popped_up = false;
random_set_seed(current_time);
for(i = 0; i < maxi; i++){
	drawNums[i] = "";
}

if( global.currentLevel > 1 ){
	played = true;
}else{
	played = false;
}