reactions = [
	 {
		 blood: "Blood Of Ares", 
		 type: "attack", 
		 dice_number:1, 
		 dice_sides:6, 
		 modifier: 0
	}
]

function take_damage(_damage) {
	hit_points_current = clamp( hit_points_current - _damage, 0, hit_points_max)
}