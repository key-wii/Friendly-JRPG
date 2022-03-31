/// @description Shrink boundaries box then destroy itself
temp_box_w = clamp(temp_box_w - shrinkSpd, 0, box_w);
temp_box_h = clamp(temp_box_h - shrinkSpd, 0, box_h);
temp_box_left = clamp(temp_box_left + shrinkSpd / 2, box_left, room_width);
temp_box_top = clamp(temp_box_top + shrinkSpd / 2, box_top, room_height);

if (temp_box_w == 0 &&
	temp_box_h == 0 &&
	temp_box_w == 0 &&
	temp_box_w == 0) {
		change_turn();
		instance_destroy();
}
alarm_set(11, 1);