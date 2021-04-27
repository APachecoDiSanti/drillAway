/// @description Insert description here
// You can write your code in this editor
if (keyboard_check(ord("R"))) {
	room_restart();
}

if (keyboard_check(vk_escape)) {
	game_end();
}