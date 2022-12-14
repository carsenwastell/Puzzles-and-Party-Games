/// @description Insert description here
// You can write your code in this editor

if place_meeting(x,y, obj_player1){
	pushed = true;
	alarm[0] = 3 * room_speed;
} else if place_meeting(x,y, obj_player2){
	pushed = true;
	alarm[0] = 3 * room_speed;
}

if pushed == true{
	image_index = 1;
	pushed = false;
} else if pushed == false{
	image_index = 0;
}