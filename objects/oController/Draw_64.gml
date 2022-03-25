/// @description DEBUG Text
draw_set_font(fnt_debug);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

draw_text(2, 2, "Fps " + string(fps));

var _turn = "";
if (global.turn == 0) _turn = "Player";
if (global.turn == 1) _turn = "Enemy";
draw_text(2, 24, _turn + " Turn");