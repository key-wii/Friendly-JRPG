function command_text() {
	//display text, wait, then change turn
	global.textboxString = global.combatDialogue[| global.dialogueIndex];
	global.dialogueIndex++;
	with (oTextbox) {
		visible = true;
		charCount = 0;
		textSound = 0;
		finished = false;
		fullText = global.textboxString;
	}
	with (oRecruitMenu) visible = false;
	alarm_set(5, 210); //change turn on alarm
	
	global.noInput = true;
	with (oCommand) sprite_index = asset_get_index("sprBox" + global.boxCol);
}