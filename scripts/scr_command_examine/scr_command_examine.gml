function command_examine() {
	//unlock new command
	global.unlockCom1 = true;
	//display unique, wait, then display default text
	global.textboxString =
		"The puppet's strings\n" +
		"are shrouded in\n" +
		"dark vortexes";
	oController.UIcolor2 = make_color_rgb(235, 223, 239);
	with (oTextbox) {
		visible = true;
		charCount = 0;
		textSound = 0;
		finished = false;
		fullText = global.textboxString;
	}
	with (oRecruitMenu) visible = false;
	alarm_set(4, 400); //change text on alarm
	
	global.noInput = true;
	with (oCommand) sprite_index = asset_get_index("sprBox" + global.boxCol);
}