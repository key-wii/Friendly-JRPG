function command_console() {
	//display unique, wait, then display default text
	global.textboxString =
		"You tell the puppet\n" +
		"everything will be\n" +
		"alright";
	global.dialogueIndex = 1; //change next text to second option
	oController.UIcolor2 = make_color_rgb(235, 223, 239);
	with (oTextbox) {
		visible = true;
		charCount = 0;
		textSound = 0;
		finished = false;
		fullText = global.textboxString;
	}
	with (oRecruitMenu) visible = false;
	alarm_set(4, 250); //change text on alarm
	
	global.noInput = true;
	with (oCommand) sprite_index = asset_get_index("sprBox" + global.boxCol);
}