function command_shout() {
	//display unique, wait, then display default text
	global.textboxString =
		"You give a bellied shout\n" +
		"\"Why would you do that?\"\n" +
		"The frog sobs";
	oController.UIcolor2 = make_color_rgb(235, 223, 239);
	with (oTextbox) {
		visible = true;
		charCount = 0;
		textSound = 0;
		finished = false;
		fullText = global.textboxString;
	}
	with (oRecruitMenu) visible = false;
	alarm_set(4, 520); //change text on alarm
	
	global.noInput = true;
	with (oCommand) sprite_index = asset_get_index("sprBox" + global.boxCol);
}