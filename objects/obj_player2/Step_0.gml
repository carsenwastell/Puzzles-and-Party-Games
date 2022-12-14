/// @description Insert description here
// You can write your code in this editor

var xDirection = keyboard_check(vk_right) - keyboard_check(vk_left);
var jump = keyboard_check(vk_up);
var onGround = place_meeting(x, y + 1, obj_test);

if (xDirection != 0){
	sprite_index = spr_player2_walk;
	image_xscale = xDirection;
} else {
	sprite_index = spr_player2;
}

xSpeed = xDirection * spd;
ySpeed++;

if (onGround){
	if (jump) {
		ySpeed = -16;
	}
}

if place_meeting(x, y + ySpeed, obj_test){
	ySpeed = 0;
}

if place_meeting(x + xSpeed, y, obj_test){
	xSpeed = 0;
}

x += xSpeed;
y += ySpeed; 