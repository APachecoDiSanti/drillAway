/// @description Insert description here
// You can write your code in this editor
#macro CHECK_X 32
#macro CHECK_Y 32
#macro BLOCK_SIZE 64
#macro SPEED_INCREMENT 0.1
#macro SPEED_INCREMENT_COOLDOWN 15000
#macro BLOCK_SPEED 0.2

score = 0;
global.speed = BLOCK_SPEED;
global.speed_lvl = 1;
global.last_speed_increment = 0;

audio_play_sound(snd_bgm, 100, true);