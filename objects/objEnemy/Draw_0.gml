draw_sprite_ext(
	sprite_index,
	1,
	x,
	y,
	3,
	3,
	0,
	c_white,
	1
)

// Draw Enemy Stats
draw_set_halign(fa_left)
draw_set_font(fntTest)
var _hitpoints_str =  "Hit Points: " + string(hit_points_current) + " / " + string(hit_points_max)
draw_text_colour(500, 10, name, c_black, c_black, c_black, c_black, 1)
draw_text_colour(500, 20, _hitpoints_str, c_black, c_black, c_black, c_black, 1)