/// @description
draw_set_font(fnt_debug);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

var xx = 0;
var _ally = savedata_get("Allies", "recruitedFrog", false);
if (_ally == 1) {
	//draw_text(2, 46 + xx, "Recruited Frog");
	draw_sprite_ext(sprFrog, 0, 22 + xx, 20, .5, .5, 0, c_white, .5);
	xx += 34;
}
_ally = savedata_get("Allies", "recruitedPuppet", false);
if (_ally == 1) {
	//draw_text(2, 46 + xx, "Recruited Puppet");
	draw_sprite_ext(sprPuppetNoStrings, 0, 22 + xx, 20, .5, .5, 0, c_white, .5);
}
/*if (room == RoomCombat) {
	var _turn = "";
	if (global.turn == 0) _turn = "Player";
	if (global.turn == 1) _turn = "Enemy";
	draw_text(4, room_height - 42, _turn + " Turn");
}*/

draw_text(4, room_height - 20, "HP: " + string(global.hp));


draw_set_halign(fa_middle);
draw_set_valign(fa_center);
if (justReset) draw_text(room_width / 2, room_height / 2, "Game Reset");
if (deleteSave) draw_text(room_width / 2, room_height / 2 - 22, "Save Data Deleted");
if (movedRoom) draw_text(room_width / 2, room_height / 2 + 22, "Move Room Successful");


var cur = sprCursor;
if (room == RoomCombat) {
	if (global.victory) cur = sprCursor3;
	else cur = sprCursor2;
}
draw_sprite_ext(cur, 0, mouse_x, mouse_y, 2, 2, 0, c_white, 1);
