function command_lullaby() {
	global.textboxString =
		"Naaaa-Na-Na-Naaaaaa\n" +
		"La-Laaa-Laaaaaaa\n" +
		"Your lullaby pervades\n" +
		"in the air";
	oController.UIcolor2 = make_color_rgb(235, 223, 239);
	with (oTextbox) {
		visible = true;
		charCount = 0;
		textSound = 0;
		finished = false;
		fullText = global.textboxString;
	}
	with (oRecruitMenu) visible = false;
	timeline_index = tLullaby;
	timeline_position = 0;
	timeline_running = true;
	
	global.noInput = true;
	with (oCommand) sprite_index = asset_get_index("sprBox" + global.boxCol);
}