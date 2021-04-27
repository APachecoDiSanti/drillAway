/// @description Insert description here
// You can write your code in this editor

if (isDrilling) {
	elapsedDrillTime = current_time - drillStart;
	
	if (elapsedDrillTime < DRILL_DURATION/2) {
		image_xscale += DRILL_INCREMENT; 
		image_yscale += DRILL_INCREMENT; 	
	}
	else {
		image_xscale -= DRILL_INCREMENT; 
		image_yscale -= DRILL_INCREMENT; 	
	}
	
	if (elapsedDrillTime >= DRILL_DURATION) {
		image_xscale = 1; 
		image_yscale = 1; 
		with(drillObject) {
			hitpoints--;
			if (hitpoints > 0) {
				image_index++;
			}
		}
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
		drillObject = pointer_null;
		isDrilling = false;
		lastDrillTime = current_time;
	}
	return;
}

if (x >= room_width-BLOCK_SIZE/2) {
	return;	
}

if (keyboard_check(vk_nokey)) {
	motion_set(WEST, global.speed);
	//move_snap(BLOCK_SIZE/2, BLOCK_SIZE/2);
}

if (keyboard_check(vk_up) || keyboard_check(ord("W"))) {
	image_angle = NORTH;
	if (place_empty(x, y+MOVE_SPEED)) {
		motion_set(NORTH, MOVE_SPEED);
	}
}

if (keyboard_check(vk_down) || keyboard_check(ord("S"))) {
	image_angle = SOUTH;
	if (place_empty(x, y-MOVE_SPEED)) {
		motion_set(SOUTH, MOVE_SPEED);
	}
}

if (keyboard_check(vk_left) || keyboard_check(ord("A"))) {
	image_angle = WEST;
	if (place_empty(x-MOVE_SPEED, y)) {
		motion_set(WEST, MOVE_SPEED);
	}
}

if (keyboard_check(vk_right) || keyboard_check(ord("D"))) {
	image_angle = EAST;
	if (place_empty(x+MOVE_SPEED, y)) {
		motion_set(EAST, MOVE_SPEED);
	}
}
