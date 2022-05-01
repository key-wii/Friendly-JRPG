/// @description 8-directional movement
move_within_overworld();

var moveH = 0;
var moveV = 0;
moveH -= max(keyboard_check_pressed(vk_left), keyboard_check_pressed(ord("A")), 0);
moveH += max(keyboard_check_pressed(vk_right), keyboard_check_pressed(ord("D")), 0);
moveV -= max(keyboard_check_pressed(vk_up), keyboard_check_pressed(ord("W")), 0);
moveV += max(keyboard_check_pressed(vk_down), keyboard_check_pressed(ord("S")), 0);
if (moveH != 0 || moveV != 0) image_index++;
