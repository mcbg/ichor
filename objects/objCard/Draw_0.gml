// Draw Sprite
draw_sprite(
	sprite_index,
	image_index,
	x,
	y
)

// Draw Text
draw_set_halign(fa_left)
draw_set_font(fntTest)
draw_text_colour(x + posx[0], y + posy[0], name, c_black, c_black, c_black, c_black, 1)
draw_text_colour(x + posx[1], y + posy[1], blood, c_black, c_black, c_black, c_black, 1)
draw_text_colour(x + posx[2], y + posy[2], type, c_black, c_black, c_black, c_black, 1)
draw_text_colour(x + posx[3], y + posy[3], number, c_black, c_black, c_black, c_black, 1)
draw_text_colour(x + posx[4], y + posy[4], target, c_black, c_black, c_black, c_black, 1)

