/// @description Insert description here
leftKey = ord("A");
rightKey = ord("D");
jumpKey = ord("W");
crouchKey = ord("S");
dropKey = vk_space;

jumpVal = -9;
jumps = 0;
MAX_JUMPS = 2; // 1 from ground, 1 in air

walkSpeed = 3;
horizontalSpeed = 0;
verticalSpeed = 0;
grav = 0.3;

hp = 5;
hp_cooldown = 0;

pickup = 0;
global.has_item = false;
