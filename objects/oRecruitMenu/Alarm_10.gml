/// @description Move right
var _final_x = w / 2;
boxLeft = clamp(boxLeft + 36, -9999, _final_x);

if (boxLeft == _final_x) {
	x = _final_x;
	alarm_set(11, 1);
}
else alarm_set(10, 1);
