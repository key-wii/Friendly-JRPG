/// @description 8-directional movement
if (keyboard_check(vk_left)) x = x - 3;
if (keyboard_check(vk_right)) x = x + 3;
if (keyboard_check(vk_up)) y = y - 3;
if (keyboard_check(vk_down)) y = y + 3;
if keyboard_check(ord("A")) x = x - 3;
if keyboard_check(ord("D")) x = x + 3;
if keyboard_check(ord("W")) y = y - 3;
if keyboard_check(ord("S")) y = y + 3;
