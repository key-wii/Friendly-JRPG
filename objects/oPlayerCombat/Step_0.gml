/// 8-directional movement for player
if (keyboard_check(vk_left)) x = x - 3;
if (keyboard_check(vk_right)) x = x + 3;
if (keyboard_check(vk_up)) y = y - 3;
if (keyboard_check(vk_down)) y = y + 3;
if keyboard_check(ord("A")) x = x - 3;
if keyboard_check(ord("D")) x = x + 3;
if keyboard_check(ord("W")) y = y - 3;
if keyboard_check(ord("S")) y = y + 3;

// checks if the player is dead .. if so, send them to the death dimension
if (hp <= 0) room_goto(RoomDEAD);