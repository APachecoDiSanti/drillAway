/// @description Insert description here
// You can write your code in this editor

var game_over = @"
GAME OVER

SCORE
"; 

draw_set_alpha(0.5);
draw_rectangle_color(
	0, 
	0,
	room_width,
	room_height,
	c_black,
	c_black,
	c_black,
	c_black,
	false
);

draw_set_alpha(1);
draw_set_font(fnt_score);
draw_set_valign(fa_middle);
draw_set_halign(fa_center);
draw_text_color(
	room_width/2, 
	room_height/4, 
	game_over+string(score),
	c_yellow,
	c_yellow,
	c_yellow,
	c_yellow,
	1
);