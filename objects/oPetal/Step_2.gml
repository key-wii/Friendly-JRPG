if (fall) {
	if (right) {
		x += 1;
		image_angle += 1.5;
		if (wiggle == -35) speed *= 1.5;
		if (wiggle == 35) speed /= 1.5;
		wiggle++;
		if (wiggle > 50) right = false;
		else if (wiggle > 40 && irandom(19) == 0) {
			right = false;
			//image_yscale *= -1;
		}
	} else {
		x -= 1;
		image_angle -= 1.5;
		if (wiggle == 35) speed *= 1.5;
		if (wiggle == -35) speed /= 1.5;
		wiggle--;
		if (wiggle < -50) right = true;
		else if (wiggle < -40 && irandom(19) == 0) {
			right = true;
			//image_yscale *= -1;
		}
	}
}