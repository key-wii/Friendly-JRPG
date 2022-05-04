/// @description create rain bullet

var yy = 300;
var bull = instance_create_layer(room_width / 2 + x_shift, yy - 75, "Above", oRain);
var ddir = dir;
with (bull)
{
	direction = ddir;
	image_angle = direction;
	speed = 20;
}
if (dirPlus) {
	if (dir > maxDir - 30) dir += 4;
	else dir += 16;
	if (dir > maxDir) {
		dirPlus = false;
		dir -= 3;
	}
} else {
	dir -= 16;
	if (dir < minDir) {
		dirPlus = true;
		dir += 8;
	}
}

timeline_position = 5;
