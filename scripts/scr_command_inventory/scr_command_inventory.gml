function command_inventory() {
	global.textboxString = "No items";
	//global.textboxString = global.combatDialogue[| global.dialogueIndex];
	with (oTextbox) {
		visible = true;
		charCount = 0;
		textSound = 0;
		finished = false;
		fullText = global.textboxString;
	}
	with (oRecruitMenu) instance_destroy();
	
	with (oCommand) sprite_index = asset_get_index("sprBox" + global.boxCol);
}