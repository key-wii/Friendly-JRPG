/// @description Shrink then destroy itself
image_xscale -= .1;
image_yscale -= .1;
if (image_xscale <= 0) instance_destroy();

alarm_set(10, 1);