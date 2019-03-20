/// @description Insert description here
// You can write your code in this editor


if(instance_number(obj_binaryBirdPlatform1) < maxBirds && birdGenNum <= maxi){
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



if (birdCollectNum >= maxi){
	room_goto_next();
}