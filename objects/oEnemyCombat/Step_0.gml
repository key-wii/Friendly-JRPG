/// @description 
if (start) {
	switch(rot_r) {
		case true:
			image_angle += 20;
			if (maxTurns > 0 && image_angle >= 300 / (turns + 1)) {
				rot_r = false;
				turns++;
			}
			if (maxTurns == 0 && image_angle == 360) start = false;
			break;
		case false:
			image_angle -= 20;
			if (maxTurns > 0 && image_angle <= -300 / (turns + 1)) {
				rot_r = true;
				turns++;
			}
			break;
	}
}
if (turns >= maxTurns && image_angle = 0) start = false;

if (image_xscale < 1) {
	image_xscale += .05;
	image_yscale += .05;
}
