/// @description 
draw_set_halign(fa_middle);
draw_set_valign(fa_center);
draw_set_font(fnt_textbox);
draw_set_color(oController.UIcolor);
draw_text(room_width / 2, room_height / 2 - 16, "You Died");

draw_set_font(fnt_textbox_small);
draw_text(room_width / 2, room_height / 2 + 24, "Press Space to Restart");
