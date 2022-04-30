/// @description Click functionality
if (global.victory || clicked) exit;

var _inBox = mouse_x >= boxLeft && mouse_x <= boxLeft + box_w &&
	mouse_y >= boxTop && mouse_y <= boxTop + box_h;
var _clicked = mouse_check_button_pressed(mb_left) || mouse_check_button_pressed(mb_right);
var _released = mouse_check_button_released(mb_left) || mouse_check_button_released(mb_right);

if (_inBox && _clicked) {
	clicking = true;
	boxTop = h - box_h - space + 2;
}
//Triggers when player lets go of mouse click within half a second after pressing it
if (_released) {
	if (_inBox && clicking) {
		close_menu();
		command();
		sound_play(snd_text_pop1);
		clicked = true;
	}
	if (clicking) {
		boxTop = h - box_h - space;
		clicking = false;
	}
}
