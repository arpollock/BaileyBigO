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
	
	location = instance_find(obj_platform,irandom(instance_number(obj_platform)));
	locX = irandom(room_width-128)+64;
	locY = irandom(room_height-128)+64;;
	bird = instance_create_layer(locX, locY,"Instances",obj_binaryBirdPlatform1);
	bird.drawNum = drawNum;
	bird.num = birdGenNum;
	birdGenNum++;
}

if (birdCollectNum >= maxi && popped_up == false){
	global.popups += 1;
	popped_up = true;
}

if (global.popups == 1){
	instance_create_layer(room_height, room_width, "Dialogue", obj_storyPopUp)
	obj_storyPopUp.title = "Bailey:";
	obj_storyPopUp.content = "Hey there! I'm Bailey Big Oh, and this is my partner, Nelly Little N. Will you help us defeat the turtles?";
	obj_storyPopUp.baileyTalk = true;
	global.popups = 2;
}

if global.popups == 3{
	instance_create_layer(room_height, room_width, "Dialogue", obj_storyPopUp)
	obj_storyPopUp.title = "Nelly:";
	obj_storyPopUp.content = "Yeah! Those ankle-biters are cruisin' for a bruisin'!";
	obj_storyPopUp.nellyTalk = true;
	global.popups = 4;
}

if global.popups == 5{
	instance_create_layer(room_height, room_width, "Dialogue", obj_storyPopUp)
	obj_storyPopUp.title = "Level 1, Binary Birds";
	obj_storyPopUp.content = "Bailey and Nelly want to go save the world and stop those Time Complexity Turtles, but Bailey Big Oh's binary birds have gotten loose! Help Bailey and Nelly collect the birds - in the correct order - and return them to their home. Bailey can grab things with [spacebar], and will drop it when [spacebar] is hit again. Nelly does the same with the [enter].";
	global.popups = 6;
}

if global.popups == 8{
	instance_create_layer(room_height, room_width, "Dialogue", obj_storyPopUp)
	obj_storyPopUp.title = "Bailey:";
	obj_storyPopUp.content = "Thank you for helping me save my birds! Now that they're safe and sound, let's go save Bitsburg from the Time Complexity Turtles!";
	global.popups = 9;
}

if (global.popups == 10){
		show_debug_message("This thing happened");
		script_finishLevelIncr(1);
		room_goto(level_select_screen);
		global.popups = 11;
	}
	
show_debug_message(global.popups);