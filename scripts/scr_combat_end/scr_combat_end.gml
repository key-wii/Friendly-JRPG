function combat_end() {
	global.victory = true;
	with (oCommand) image_speed = 0;
	with (oTextbox) {
		fullText = "Victory!";
		charCount = 0;
		textSound = 0;
		finished = false;
	}
	
	savedata_set("Allies", "recruited" + global.enemy, true); //make this dynamic later to fit with any enemy
	
	audio_resume_all();
	room_goto(global.CurrentRoom);
}