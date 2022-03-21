/// @description Bob up & down during combat
if (global.victory) exit;
if (wait == 0) {
	if (up == false) {
		text_y += .1;
		if (text_y >= 3) {
			up = true;
			wait = 20;
		}
	} else {
		text_y -= .1;
		if (text_y <= -3) {
			up = false;
			wait = 20;
		}
	}
} else wait--;