/// @description Click functionality
if (global.victory || clicked || global.noInput) exit;

var _clicked = mouse_check_button_pressed(mb_left) || mouse_check_button_pressed(mb_right);
var _released = mouse_check_button_released(mb_left) || mouse_check_button_released(mb_right);

var _inBox;
var xx = 0;
var yy = 0;
for (var i = 0; i < ds_list_size(commands); i++) {
	_inBox = mouse_x >= boxLeft + xx && mouse_x <= boxLeft + box_w / 2 + xx &&
	mouse_y >= boxTop + yy && mouse_y <= boxTop + box_h / 2 + yy;
	
	if (_inBox && _clicked)
		clicking[| i] = true;
	
	if (_released) {
		if (clicking[| i]) {
			if (_inBox) {
				commands[| i][1]();
				sound_play(snd_text_pop1);
				clicked = true;
				exit;
			}
			clicking[| i] = false;
		}
	}
	
	if (i mod 2 == 0) {
		xx += box_w / 2 - space / 2;
	} else {
		xx = 0;
		yy += box_h / 2;
	}
}
