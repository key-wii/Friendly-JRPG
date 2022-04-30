function close_menu() {
	instance_destroy(oRecruitMenu);
	//instance_destroy(oItemMenu);
	with (oTextbox) {
		visible = true;
		charCount = 9999;
		textSound = 0;
		finished = true;
	}
	with (oCommand) {
		clicked = false;
		sprite_index = asset_get_index("sprButton" + global.boxCol);
	}
}