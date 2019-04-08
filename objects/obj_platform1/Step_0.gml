/// @description Insert description here
// You can write your code in this editor


if(instance_number(obj_binaryBirdPlatform1) < maxBirds && birdGenNum < maxi){
	num = birdGenNum;
	drawNum = "";
	if (num >= 8){
		num -= 8;
		drawNum += "1";
	}
	else drawNum += "0";
	if (num >=4) {
		num -=4;
		drawNum += "1";
	}
	else drawNum += "0";
	if (num >=2) {
		num -= 2;
		drawNum += "1";
	}
	else drawNum += "0";
	if (num >= 1) {
		num -= 1;
		drawNum += "1";
	}
	else drawNum += "0";
	
	locX = irandom(room_width-128)+64;
	locY = irandom(room_height-128)+64;;
	bird = instance_create_layer(locX, locY,"Instances",obj_binaryBirdPlatform1);
	bird.drawNum = drawNum;
	bird.num = birdGenNum;
	birdGenNum++;
}

if (birdCollectNum >= maxi && popped_up == false){
	obj_levelUnlockControl.popups += 1;
	popped_up = true;
}

if (obj_levelUnlockControl.popups == 1){
	instance_create_layer(room_height, room_width, "Dialogue", obj_storyPopUp)
	obj_storyPopUp.title = "Bailey:";
	obj_storyPopUp.content = "Hey there! I'm Bailey Big Oh, and this is my partner, Nelly Little N. Will you help us defeat the turtles?";
	obj_storyPopUp.baileyTalk = true;
	obj_levelUnlockControl.popups = 2;
}

if (obj_levelUnlockControl.popups == 3){
	instance_create_layer(room_height, room_width, "Dialogue", obj_storyPopUp)
	obj_storyPopUp.title = "Nelly:";
	obj_storyPopUp.content = "Yeah! Those ankle-biters are cruisin' for a bruisin'!";
	obj_storyPopUp.nellyTalk = true;
	obj_levelUnlockControl.popups = 4;
}

if (obj_levelUnlockControl.popups == 5){
	instance_create_layer(room_height, room_width, "Dialogue", obj_storyPopUp)
	obj_storyPopUp.title = "Level 1, Binary Birds";
	obj_storyPopUp.content = "Bailey and Nelly want to go save the world and stop those Time Complexity Turtles, but Bailey Big Oh's binary birds have been let out! Help Bailey and Nelly collect the birds - in the correct order - and return them to their home.";
	obj_levelUnlockControl.popups = 6;
}

if (obj_levelUnlockControl.popups == 7){
	instance_create_layer(room_height, room_width, "Dialogue", obj_storyPopUp)
	obj_storyPopUp.title = "Counting in Binary";
	obj_storyPopUp.content = "Bailey and Nelly can only catch birds of matching colors, and orange birds can be caught by both. To put the birds back properly, you need to collect them in binary order 0 : 0000, 1 : 0001, 2 : 0010, 3 : 0011, and so on. ";
	obj_levelUnlockControl.popups = 8;
}

if (obj_levelUnlockControl.popups == 10){
	instance_create_layer(room_height, room_width, "Dialogue", obj_storyPopUp)
	obj_storyPopUp.title = "Bailey:";
	obj_storyPopUp.content = "Thank you for helping me save my birds! Now that they're safe and sound, let's go save Bitsburg from the Time Complexity Turtles!";
	obj_storyPopUp.baileyTalk = true;
	obj_levelUnlockControl.popups = 11;
}

if (obj_levelUnlockControl.popups == 12){
	script_sfx("win");
	script_finishLevelIncr(1);
	room_goto(level_select_screen);
	obj_levelUnlockControl.popups = 13;
}