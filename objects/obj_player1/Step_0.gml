/// @description Insert description here
// You can write your code in this editor

var xDirection = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var jump = keyboard_check_pressed(vk_space);
var onGround = place_meeting(x, y + 1, obj_test);

if (xDirection != 0) image_xscale = xDirection;

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