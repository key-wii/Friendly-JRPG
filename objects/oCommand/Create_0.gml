w = display_get_gui_width();
h = display_get_gui_height();
x = w / 2;
y = h - (h / 16);

fullText = "";

space = 10;
//p_space = 4;	NOT USING PORTRAIT

box_w = 30;
box_h = 30;
//yy = h - (h / 1.9) + 92;
final_box_w = room_width / 3.75 - (space * 2);
final_box_h = room_height / 8;

boxLeft = room_width / 2;
dir = LEFT;
//boxTop = h - box_h - space;
boxTop = y;

text_y = 0;
up = false;
wait = 0;

text_draw = false;
ready_text = false;
//alarm_set(0, 1);
alarm_set(11, 1);

clicking = false;
command = command_stall;