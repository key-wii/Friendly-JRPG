/// 8-directional movement
function move_within_overworld() {
	var spaceH = 1;
	var spaceV = -2;
	var xx = 0; var yy = 0;
	var diag = false;

	//horizontal movement
	var moveH = 0;
	moveH -= max(keyboard_check_direct(vk_left), keyboard_check_direct(ord("A")), 0);
	moveH += max(keyboard_check_direct(vk_right), keyboard_check_direct(ord("D")), 0);
	if (moveH < 0) {
		xx -= spd;
		sprite_index = sprPlayerOvL;
	}
	if (moveH > 0) {
		xx += spd;
		sprite_index = sprPlayerOvR;
	}

	//vertical movement
	var moveV = 0;
	moveV -= max(keyboard_check_direct(vk_up), keyboard_check_direct(ord("W")), 0);
	moveV += max(keyboard_check_direct(vk_down), keyboard_check_direct(ord("S")), 0);
	if (moveV < 0) {
		yy -= spd;
		sprite_index = sprPlayerOvB;
	}
	if (moveV > 0) {
		yy += spd;
		sprite_index = sprPlayerOvF;
	}
	
	if (xx == 0 && yy == 0) {
		switch (sprite_index) {
			case sprPlayerOvF:
				sprite_index = sprPlayerOvFidle;
				image_index = 0;
				break;
			case sprPlayerOvB:
				sprite_index = sprPlayerOvBidle;
				image_index = 0;
				break;
			case sprPlayerOvR:
				sprite_index = sprPlayerOvRidle;
				image_index = 0;
				break;
			case sprPlayerOvL:
				sprite_index = sprPlayerOvLidle;
				image_index = 0;
				break;
		}
	}

	//diagonal movement
	if (xx != 0 && yy != 0) {
		xx *= .707;
		yy *= .707;
		diag = true;
	}

	//get position to move to
	var pos_x = clamp(x + xx,
		box_left + sprite_width / 2 + spaceH,
		box_left + box_w - sprite_width / 2 - spaceH);
	var pos_y = clamp(y + yy,
		box_top + sprite_width / 2 + spaceV,
		box_top + box_h - sprite_width / 2 - spaceV);
	
	//don't slow down if player is holding diagonal direction along walls
	if (diag == true) {
		xx = 0; yy = 0;
		if (x == pos_x) {
			//move
			if (moveV < 0) yy -= spd;
			if (moveV > 0) yy += spd;
			y = clamp(y + yy,
				box_top + sprite_width / 2 + spaceV,
				box_top + box_h - sprite_width / 2 - spaceV);
		} else
		if (y == pos_y) {
			//move
			if (moveH < 0) xx -= spd;
			if (moveH > 0) xx += spd;
			x = clamp(x + xx,
				box_left + sprite_width / 2 + spaceH,
				box_left + box_w - sprite_width / 2 - spaceH);
		} else {
			//move
			x = pos_x;
			y = pos_y;
		}
	} else {
		//move
		x = pos_x;
		y = pos_y;
	}
}