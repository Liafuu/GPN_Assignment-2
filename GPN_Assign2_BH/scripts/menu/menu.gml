function Menu(_x, _y, _options, _description = -1) {
	with (instance_create_depth(_x, _y, -999, obj_menu_setup)) {
		options = _options;
		description = _description;
		options_count = array_length(_options);
		hovermarker = "* ";
		
		// Setup Size
		margin = 35;
		draw_set_font(MainFont);
		
		width = 1;
		if (_description != -1) {width = max(width, string_width(_description))};
		for (var i = 0; i < options_count; i++) {
			width = max(width, string_width(_options[i][0])); }
		
		heightLine = 50;
		height = heightLine * (options_count + !(description == -1));
		
		widthFull = width + margin * 2;
		heightFull = height + margin * 2;
	}
}

function StartGame() {
	room_goto(rm_stage);
}

function Credits() {
	room_goto(rm_credits);
}

function Controls() {
	room_goto(rm_controls);
}