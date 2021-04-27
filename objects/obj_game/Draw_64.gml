/// @description Insert description here
// You can write your code in this editor
draw_rectangle_color(
	room_width-BLOCK_SIZE*1.5, 
	0,
	room_width,
	BLOCK_SIZE/2,
	c_black,
	c_black,
	c_black,
	c_black,
	false
);

draw_set_font(fnt_score);
draw_set_valign(fa_middle);
draw_set_halign(fa_left);
draw_text_color(
	room_width-BLOCK_SIZE*1.5, 
	BLOCK_SIZE/4, 
	"SCORE:",
	c_yellow,
	c_yellow,
	c_yellow,
	c_yellow,
	1
);

draw_set_valign(fa_middle);
draw_set_halign(fa_right);
draw_text_color(
	room_width, 
	BLOCK_SIZE/4, 
	string(score),
	c_yellow,
	c_yellow,
	c_yellow,
	c_yellow,
	1
);