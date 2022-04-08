function create_player_turn_ui(flavor_text) {
	var _command_r = instance_create_layer(x, y, layer, oCommand);
	with (_command_r) {
		fullText = "Recruit";
		dir = LEFT;
		image_speed = .8;
		image_index = 0;
		up = false;
		command = combat_end;
	}
	var _command_i = instance_create_layer(x, y, layer, oCommand);
	with (_command_i) {
		//fullText = "Items";
		fullText = "Nothing";
		dir = RIGHT;
		image_speed = .8;
		image_index = 4;
		up = true;
		command = command_stall;
	}
	var _textbox = instance_create_layer(x, y, layer, oTextbox);
	_textbox.fullText = flavor_text;
}