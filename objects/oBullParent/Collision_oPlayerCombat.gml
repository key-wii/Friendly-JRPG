/// @description Deal damage
global.hp -= pow;
audio_play_sound(snd_damage, false, false);
if (global.hp <= 0) room_goto(RoomDEAD);

var sspd = speed;
var ddir = point_direction(x, y, other.x, other.y);
var xx = lengthdir_x(sspd * 2, ddir);
var yy = lengthdir_y(sspd * 2, ddir);
with (other) {
	x_adjust = xx;
	y_adjust = yy;
}
ssSudden(1, 1, false, false);

instance_destroy();
