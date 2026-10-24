function roll_dice(_number, _sides) {
	var _total = 0
	for (var _i = 0; _i < _number; _i++) {
	        _total += irandom(_sides - 1) + 1
	}
	return(_total)
};