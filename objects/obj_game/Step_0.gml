/// @description Insert description here
// You can write your code in this editor
if (keyboard_check(vk_escape)) {
	game_end();
}

if (!instance_position(room_width, CHECK_Y, obj_indestructible)) {
	instance_create_layer(room_width+CHECK_X, CHECK_Y, "WALLS", obj_indestructible);
	instance_create_layer(room_width+CHECK_X, room_height-CHECK_Y, "WALLS", obj_indestructible);
	
	var position_y = BLOCK_SIZE+CHECK_Y;
	var block = pointer_null;
	var createBlock = true;
	
	while(position_y <  room_height-CHECK_Y) {
		if (createBlock) {
		block = choose(obj_normal, obj_indestructible, obj_3hits);
		//block = choose(obj_normal);
		instance_create_layer(room_width+CHECK_X, position_y, "INSTANCES", block);
		}
		createBlock = choose (true, false);
		position_y += BLOCK_SIZE;
	}
	show_debug_message("X: "+string(room_width+CHECK_X));
}

if (current_time - global.last_speed_increment > SPEED_INCREMENT_COOLDOWN) {
	global.last_speed_increment = current_time;
	global.speed_lvl += 1;
	global.speed = global.speed_lvl*SPEED_INCREMENT;
	for (var i = 0; i < instance_number(obj_block); ++i;) {
		instance_find(obj_block, i).hspeed = -global.speed;
    } 
}