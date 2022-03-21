function end_combat() {
	global.victory = true;
	with (oCommand) image_speed = 0;
	with (oTextbox) {
		fullText = "Victory!";
		charCount = 0;
		textSound = 0;
		finished = false;
	}
}