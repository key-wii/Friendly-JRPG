/// @description 
if (x > prev_x) {
	if (image_angle < 15) image_angle += .35;
	else if (image_angle > 35) image_angle = clamp(image_angle + .15, -50, 50);
	else image_angle += .25;
} else if (x < prev_x) {
	if (image_angle > -15) image_angle -= .35;
	else if (image_angle < 35) image_angle = clamp(image_angle - .15, -50, 50);
	else image_angle -= .25;
}

prev_x = x;
prev_y = y;
