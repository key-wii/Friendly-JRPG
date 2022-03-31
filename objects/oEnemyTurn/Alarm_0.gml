/// @description Grow boundaries box
temp_box_w = clamp(temp_box_w + growSpd, 0, box_w);
temp_box_h = clamp(temp_box_h + growSpd, 0, box_h);
temp_box_left = clamp(temp_box_left - growSpd / 2, box_left, room_width);
temp_box_top = clamp(temp_box_top - growSpd / 2, box_top, room_height);
/*temp_box_left = x - (temp_box_w / 2);
temp_box_top = y - ((box_h - temp_box_h) / 2);*/

if (temp_box_w == box_w &&
	temp_box_h == box_h &&
	temp_box_left == box_left &&
	temp_box_top == box_top) exit;
alarm_set(0, 1);