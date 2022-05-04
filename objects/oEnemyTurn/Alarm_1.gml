/// @description 
box_left = x - box_w / 2;
box_top = y - box_h / 2;
alarm_set(10, duration);
player.y = box_top + box_h / 2;
player.box_left = box_left;
player.box_top = box_top;
player.box_w = box_w;
player.box_h = box_h;
