/// @description Shrink then destroy itself
image_xscale -= .05;
image_yscale -= .05;
image_angle += 36;

if (image_xscale <= 0) instance_destroy();
alarm_set(10, 1);