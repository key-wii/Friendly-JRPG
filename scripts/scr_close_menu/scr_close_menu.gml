function close_menu() {
	with (oTextbox) visible = true;
	instance_destroy(oRecruitMenu);
	//instance_destroy(oItemMenu);
	with (oCommand) clicked = false;
}