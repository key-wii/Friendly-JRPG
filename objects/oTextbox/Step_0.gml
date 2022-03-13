/// @description NOT USING CLICK FUNCTIONALITY
/*
if ((mouse_check_button(mb_left) || mouse_check_button(mb_right))) {
	clickHeld++;
}
//Triggers when player lets go of mouse click within half a second after pressing it
if ((mouse_check_button_released(mb_left) || mouse_check_button_released(mb_right))) {
	if (clickHeld < 30 && clickHeld > 2) {
		if (finished) {
			//if full text message is already displayed, move on
			alarm_set(1, 5);
		} else {
			//display full text message
			charCount = 9999;
			finished = true;
		}
	}
	clickHeld = 0;
}