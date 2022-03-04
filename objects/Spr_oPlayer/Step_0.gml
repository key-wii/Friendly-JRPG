/// 8-directional movement for player
hinput = keyboard_check(vk_right) - keyboard_check(vk_left);
vinput = keyboard_check(vk_left) - keyboard_check(vk_right);
if (keyboard_check(vk_left)) x = x - 3;
if (keyboard_check(vk_right)) x = x + 3;
if (keyboard_check(vk_up)) y = y - 3;
if (keyboard_check(vk_down)) y = y + 3;
x += hinput;
y += vinput;
