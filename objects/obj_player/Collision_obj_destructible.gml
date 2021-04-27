/// @description Insert description here
// You can write your code in this editor

if (keyboard_check(vk_up) || keyboard_check(ord("W"))) {
	if (other.y > y) {
		return;	
	}
}

if (keyboard_check(vk_down) || keyboard_check(ord("S"))) {
	if (other.y < y) {
		return;	
	}
}

if (keyboard_check(vk_right) || keyboard_check(ord("D"))) {
	if (other.x < x) {
		return;	
	}
}
if (keyboard_check(vk_left) || keyboard_check(ord("A"))) {
	if (other.x > x) {
		return;	
	}
}

if (!isDrilling && current_time - lastDrillTime > DRILL_COOLDOWN)  {
	audio_play_sound(snd_drill, 10, false);
	isDrilling = true;
	drillStart = current_time;
	drillObject = other;
	motion_set(WEST, global.speed);
}
