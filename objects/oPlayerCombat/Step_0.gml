/// @description 8-directional movement
//movement
var spaceH = 6;
var spaceV = 7;
var xx = 0; var yy = 0;

//horizontal movement
var moveH = 0;
moveH -= max(keyboard_check_direct(vk_left), keyboard_check_direct(ord("A")), 0);
moveH += max(keyboard_check_direct(vk_right), keyboard_check_direct(ord("D")), 0);
if (moveH < 0) {
	if (x > box_left + sprite_width / 2 + spaceH) xx -= spd;
}
if (moveH > 0) {
	if (x < (box_left + box_w) - sprite_width / 2 - spaceH) xx += spd;
}

//vertical movement
var moveV = 0;
moveV -= max(keyboard_check_direct(vk_up), keyboard_check_direct(ord("W")), 0);
moveV += max(keyboard_check_direct(vk_down), keyboard_check_direct(ord("S")), 0);
if (moveV < 0) {
	if (y > box_top + sprite_width / 2 + spaceV) yy -= spd;
}
if (moveV > 0) {
	if (y < (box_top + box_h) - sprite_width / 2 - spaceV) yy += spd;
}

//diagonal movement
if (xx != 0 and yy != 0) {
	xx *= .707;
	yy *= .707;
}

//move
x += xx;
y += yy;