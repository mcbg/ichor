// Current selected card
selection = instance_position(mouse_x, mouse_y, all)
if selection {
	if selection.object_index = objCard {
		currentCard = selection
	} else { currentCard = noone }
}


// Inputs
if mouse_check_button_pressed(mb_left) {
	if currentCard {
		play_card(currentCard)
		play_pending_reactions()
	}
}