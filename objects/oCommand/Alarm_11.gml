/// @description Grow textbx
if (box_h == final_box_h) box_w = clamp((box_w + 10), 0, final_box_w);
box_h = clamp((box_h + 10), 0, final_box_h);
var bbox_w = box_w;
if (dir == RIGHT) bbox_w = 0;
boxLeft = room_width / 2 + (bbox_w + space / 2) * dir;
boxTop = h - box_h - space;


if (box_w >= 300 && alarm_get(0) <= 0 && !text_draw) {
	alarm_set(0, 1);
	text_draw = true;
}
if (box_w != final_box_w || box_h != final_box_h) {
	alarm_set(11, 1);
} else {
	ready_text = true;
}