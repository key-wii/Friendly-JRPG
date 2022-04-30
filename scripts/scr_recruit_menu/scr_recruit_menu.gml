function recruit_menu() {
	with (oTextbox) {
		visible = false;
		instance_create_layer(x, y, "UI", oRecruitMenu);
	}
}