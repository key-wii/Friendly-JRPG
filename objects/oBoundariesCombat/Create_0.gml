x = room_width / 2;
y = room_height - (room_height / 1.9);

/*timeline_index = timelineName;
timeline_running = true;*/

duration = 120;
box_w = 200;
box_h = 200;
box_left = x - box_w / 2;
box_top = y;

alarm_set(10, duration);

var player = instance_create_layer(x, box_top + box_h / 2, "Player", oPlayerCombat);
player.box_left = box_left;
player.box_top = box_top;
player.box_w = box_w;
player.box_h = box_h;

temp_box_w = 32;
temp_box_h = 32;
temp_box_left = x - (temp_box_w / 2);
temp_box_top = y + 45 + ((box_h - temp_box_h) / 2);
alarm_set(0, 1);