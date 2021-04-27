/// @description Insert description here
// You can write your code in this editor

audio_play_sound(snd_bump, 10, false);
if (image_angle == NORTH) {
	y += BLOCK_SIZE/8;
}
if (image_angle == SOUTH) {
	y -= BLOCK_SIZE/8;
}
if (image_angle == WEST) {
	x += BLOCK_SIZE/8;
}
if (image_angle == EAST) {
	x -= BLOCK_SIZE/8;
}
if !place_snapped(BLOCK_SIZE/8, BLOCK_SIZE/8) {
	move_snap(BLOCK_SIZE/8, BLOCK_SIZE/8);
}
motion_set(WEST, global.speed);
show_debug_message("COLLIDED");