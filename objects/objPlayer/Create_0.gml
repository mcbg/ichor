selection = noone
currentCard = noone

// Player Objects
deck = array_create(0)
hand = array_create(0)
discard_pile = array_create(0)

// Enemies
pending_reactions = array_create(0)

function draw_from_deck() {
	var _index = array_length(deck)
	array_push(hand, deck[_index])
}

function discard_from_hand(_card_index) {
	array_push(discard_pile, hand[_card_index]);
	array_delete(hand, _card_index, 1)
}

function play_card(_index) {
	//var _card = hand[_index]
	var _card = _index,
		_enemy = instance_find(objEnemy, 0);
		
	if _card.type == "attack" {
		
		damage = roll_dice(_card.dice_number, _card.dice_sides);
		var _reactions = array_create(0)
		for (var _i = 0; _i < array_length(_enemy.reactions); _i++) {
			var _reaction = _enemy.reactions[_i];
			if _reaction.blood == _card.blood {
				array_push(pending_reactions, _reaction)
			}
		}
		_enemy.take_damage(damage)

		// Update Combat Log
		var _attack_message = "Player dealth " + string(damage) + " damage. " + string(_enemy.name) + " reacted!"
		array_push(objStateMachine.combat_log, _attack_message)
		
	}
	
	play_pending_reactions()
	
}

function play_pending_reactions() {
	for (var _i = 0; _i < array_length(pending_reactions); _i++) {
		var _enemy = instance_find(objEnemy, 0),
			_reaction = array_pop(pending_reactions);
		
		if _reaction.type == "attack" {
			damage = roll_dice(_reaction.dice_number, _reaction.dice_sides) + _reaction.modifier;
			take_damage(damage)
			
			// Update Combat Log
			var _attack_message = _enemy.name + " dealth " + string(damage) + " damage to player!"
			array_push(objStateMachine.combat_log, _attack_message)
		}
	}
}

function take_damage(_damage) {
	hit_points_current = clamp( hit_points_current - _damage, 0, hit_points_max)
}