// Draw Sprite (Placeholder)
draw_sprite(
	sprite_index,
	image_index,
	x,
	y
)

draw_set_halign(fa_left)
draw_set_font(fntTest)

// Draw Player Stats
var _hitpoints_str =  "Hit Points: " + string(hit_points_current) + " / " + string(hit_points_max)
draw_text_colour(10, room_height - 100, name, c_black, c_black, c_black, c_black, 1)
draw_text_colour(10, room_height - 90, _hitpoints_str, c_black, c_black, c_black, c_black, 1)

var _selectionStr = "Selection : None"
if selection {
	_selectionStr = "Selection : " + selection.name
}
draw_text_colour(10, room_height - 80, _selectionStr, c_black, c_black, c_black, c_black, 1)