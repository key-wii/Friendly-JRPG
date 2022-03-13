/// @description Move up
boxTop = clamp(boxTop - 4, h - (h / 16) + 10, 9999);

if (boxTop == h - (h / 16) + 10) {
	y = boxTop - 10;
	alarm_set(11, 1);
}
else alarm_set(10, 1);