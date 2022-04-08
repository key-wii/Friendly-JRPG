/// @description DEBUG Text
draw_set_font(fnt_debug);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

draw_text(2, 2, "Fps " + string(fps));

if (room == RoomOverworld1) {
	var _ally = savedata_get("Allies", "recruitedRadish", false);
	//if (_ally == false) _ally = "false";
	//else _ally = "true"
	draw_text(2, 24, "Recruited Radish : " + string(_ally));
}
else if (room == RoomCombat) {
	var _turn = "";
	if (global.turn == 0) _turn = "Player";
	if (global.turn == 1) _turn = "Enemy";
	draw_text(2, 24, _turn + " Turn");
}

draw_text(2, 46, "HP: " + string(global.hp));


draw_set_halign(fa_middle);
draw_set_valign(fa_center);
if (justReset) draw_text(room_width / 2, room_height / 2, "Game Reset");
if (deleteSave) draw_text(room_width / 2, room_height / 2 - 22, "Save Data Deleted");
if (movedRoom) draw_text(room_width / 2, room_height / 2 + 22, "Move Room Successful");
