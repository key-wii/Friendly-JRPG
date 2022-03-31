/// @description Grow to full size
image_xscale += .05;
image_yscale += .05;
image_angle -= 42;

if (image_xscale == full_scale)
	image_angle = 0;
else
	alarm_set(9, 1);