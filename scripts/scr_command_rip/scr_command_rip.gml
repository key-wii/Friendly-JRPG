function command_rip() {
	global.successfulActs++;
	if (global.successfulActs > 1) {
		global.textboxString =
			"You rip the strings\n" +
			"apart with your bare\n" +
			"hands... Success!";
		oEnemyCombat.sprite_index = sprPuppetCombat3;
		timeline_index = tRip;
		timeline_position = 0;
		timeline_running = true;
	} else {
		global.textboxString =
			"You rip the\n" +
			"strings apart with\n" +
			"your bare hands...\n" +
			"It's working!";
		oEnemyCombat.sprite_index = sprPuppetCombat2;
		alarm_set(4, 400); //change text on alarm
	}
	oController.UIcolor2 = make_color_rgb(235, 223, 239);
	with (oTextbox) {
		visible = true;
		charCount = 0;
		textSound = 0;
		finished = false;
		fullText = global.textboxString;
	}
	with (oRecruitMenu) visible = false;
	
	global.noInput = true;
	with (oCommand) sprite_index = asset_get_index("sprBox" + global.boxCol);
}