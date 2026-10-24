draw_set_halign(fa_left)
draw_set_font(fntTest)

// Drawing mouse position
draw_text_colour(10, 10, "mouse x: " + string(mouse_x), c_black, c_black, c_black, c_black, 1)
draw_text_colour(10, 20, "mouse y: " + string(mouse_y), c_black, c_black, c_black, c_black, 1)

// Drawing combat log
var _log_messages = array_length(combat_log),
	_max_messages = clamp(5, 0, _log_messages)
for (var _i = 0; _i < _max_messages; _i++) {

	var _message_idx = _i + _log_messages - _max_messages,
		_message = combat_log[_message_idx];
	draw_text_color(room_width - 320, room_height - 100 + 15*_i, _message, c_black, c_black, c_black, c_black, 1);
}
